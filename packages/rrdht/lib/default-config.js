const mosodium = require('@holochain/mosodium')
const { PersistCacheMem } = require('./persist-cache-mem')

// -- configuration parameters -- //

/**
 * set this if you would like to change the default agent location work target
 * the from(..., 'hex').toString('base64') is just to make editing easier
 */
exports.agentLocWorkTarget = Buffer.from('000000000000000000000000000000000000000000000000000000000000b400', 'hex').toString('base64')

/**
 * The class to use for persistence (if you use the default
 * persistCacheGet and persistCacheSet methods)
 */
exports.PersistCache = PersistCacheMem

// -- debug configuration parameters -- //

/**
 * set this if you always want the nonce to start at a certain point
 * (mostly used for unit testing)
 */
exports.debugAgentLocSearchStartNonce = null

// -- configuration functions -- //

/**
 * hash function powered by sha256
 * @param {object} config - reference to config object
 * @param {string} buf - the base64 buffer to hash
 * @param {string} - the base64 encoded sha256 hash of buf
 */
exports.hashFn = async function hashFn (config, buf) {
  buf = assertBuffer(buf)
  return mosodium.hash.sha256(buf).toString('base64')
}

/**
 * derive a data location from a data hash
 * @param {object} config - reference to config object
 * @param {string} hash - the base64 hash to convert to a location
 * @return {string} the base64 encoded 4 byte location
 */
exports.dataLocFn = async function dataLocFn (config, hash) {
  hash = assertBuffer(hash, 32)
  return bufCompress(hash).toString('base64')
}

/**
 * get an agent location hash from an agent hash and a nonce
 * @param {object} config - reference to config object
 * @param {string} hash - the agent hash (sha256 of a binary agentId)
 * @param {string} nonce - the calculated nonce to apply
 * @param {string} - the base64 encoded full 32 byte location hash
 */
exports.agentLocHashFn = async function agentLocHashFn (config, hash, nonce) {
  hash = assertBuffer(hash, 32)
  nonce = assertBuffer(nonce, 32)

  nonce = mosodium.SecBuf.from(nonce)

  const res = await mosodium.pwhash.hash(nonce, {
    salt: hash,
    opslimit: mosodium.pwhash.OPSLIMIT_INTERACTIVE,
    memlimit: mosodium.pwhash.MEMLIMIT_MODERATE
  })

  let locHash
  res.hash.readable(h => {
    locHash = mosodium.hash.sha256(h)
  })

  return locHash.toString('base64')
}

/**
 * derive an agent location from an agent hash (sha256 of a binary agentId)
 * @param {object} config - reference to config object
 * @param {string} hash - the agent hash (sha256 of a binary agentId)
 * @param {string} nonce - the calculated nonce to apply
 * @return {string} the base64 encoded 4 byte location
 */
exports.agentLocFn = async function agentLocFn (config, hash, nonce) {
  const rawHash = assertBuffer(hash, 32)
  const locHash = await config.agentLocHashFn(hash, nonce)
  await config.agentLocVerifyFn(locHash)
  return bufCompress(rawHash).toString('base64')
}

/**
 * @param {object} config - reference to config object
 * @param {string} locHash - the hash to verify against work target
 */
exports.agentLocVerifyFn = async function agentLocVerifyFn (config, locHash) {
  locHash = assertBuffer(locHash, 32)
  const workTgt = assertBuffer(config.agentLocWorkTarget, 32)

  if (mosodium.util.compare(locHash, workTgt) < 0) {
    return
  }

  throw new Error('invalid location nonce; bad work verification')
}

/**
 * @param {object} config - reference to config object
 * @param {string} hash - the hash to find a nonce for that satisfies work tgt
 * @return {string} - the nonce discovered
 */
exports.agentLocSearchFn = async function agentLocSearchFn (config, hash) {
  hash = assertBuffer(hash, 32)

  let nonce
  if (config.debugAgentLocSearchStartNonce) {
    const startNonce = assertBuffer(config.debugAgentLocSearchStartNonce, 32)
    nonce = mosodium.SecBuf.from(startNonce)
  } else {
    nonce = new mosodium.SecBuf(32)
    nonce.randomize()
  }

  for (;;) {
    try {
      let rawNonce
      nonce.readable(n => {
        rawNonce = Buffer.from(n)
      })
      await config.agentLocVerifyFn(
        await config.agentLocHashFn(
          hash.toString('base64'), rawNonce.toString('base64')))
      break
    } catch (e) { /* pass */ }

    nonce.writable(n => mosodium.util.increment(n))
  }

  let out
  nonce.readable(n => {
    out = Buffer.from(n)
  })

  return out.toString('base64')
}

/**
 * @param {object} config - reference to config object
 * @param {string} ns - namespace of key/value store
 * @return {MapIterator}
 */
exports.persistCacheKeys = async function persistCacheKeys (config, ns) {
  const cache = await getPersistCacheSingleton(config)

  return cache.keys(ns)
}

/**
 * @param {object} config - reference to config object
 * @param {string} ns - namespace of key/value store
 * @param {string} key - the key to fetch from store
 * @return {string|undefined} - the data retrieved from store
 */
exports.persistCacheGet = async function persistCacheGet (config, ns, key) {
  const cache = await getPersistCacheSingleton(config)

  return cache.get(ns, key)
}

/**
 * @param {object} config - reference to config object
 * @param {string} ns - namespace of key/value store
 * @param {string} key - the key to add to store
 * @param {string} data - the data to add to store
 */
exports.persistCacheSet = async function persistCacheSet (config, ns, key, data) {
  const cache = await getPersistCacheSingleton(config)

  return cache.set(ns, key, data)
}

/**
 * @param {object} config - reference to config object
 * @param {string} ns - namespace of key/value store
 * @param {string} key - the key to fetch from store
 */
exports.persistCacheRemove = async function persistCacheRemove (config, ns, key) {
  const cache = await getPersistCacheSingleton(config)

  return cache.remove(ns, key)
}

// -- config object builder -- //

const CONFIG_MAGIC = '$rrdht$config$'
const CLASS_CONFIG = ['PersistCache']

/**
 */
exports.isConfigObject = function isConfigObject (o) {
  return typeof o === 'object' && o[CONFIG_MAGIC] === true && Object.isFrozen(o)
}

/**
 */
exports.generateConfigBuilder = function generateConfigBuilder () {
  const config = {}

  const builder = {}

  const attachOne = (k, v) => {
    if (typeof v === 'function' && CLASS_CONFIG.indexOf(k) < 0) {
      config[k] = (...args) => v(config, ...args)
    } else {
      config[k] = v
    }
  }

  builder.attach = (o) => {
    for (let k in o) {
      if (k in config) {
        throw new Error('"' + k + '" already registered in config object')
      }
      const v = o[k]
      attachOne(k, v)
    }
    return builder
  }

  builder.preInvoke = async (fn) => {
    await fn(config)
  }

  builder.finalize = async (fn) => {
    for (let key in exports) {
      if (key !== 'generateConfigBuilder' && key !== 'isConfigObject' && !(key in config)) {
        attachOne(key, exports[key])
      }
    }

    Object.defineProperty(config, CONFIG_MAGIC, {
      value: true
    })

    if (typeof fn === 'function') {
      await fn(config)
    }

    Object.freeze(config)

    builder.attach = builder.preInvoke = builder.finalize = () => {
      throw new Error('finalize already invoked, builder functions invalid')
    }

    return config
  }

  return builder
}

// -- helper functions -- //

let persistCacheSingleton = null

/**
 * helper get the persistCache singleton
 */
async function getPersistCacheSingleton (config) {
  if (!persistCacheSingleton) {
    persistCacheSingleton = await new config.PersistCache()
  }
  return persistCacheSingleton
}

/**
 * helper checks if a buffer is the correct length
 */
function assertBuffer (b, l) {
  if (typeof b !== 'string') {
    throw new Error(typeof b + ' required to be a base64 binary string')
  }
  b = Buffer.from(b, 'base64')
  if (l && b.byteLength !== l) {
    throw new Error('Buffer.byteLength was ' + b.byteLength + ' but ' + l + ' was required')
  }
  return b
}

/**
 * helper compresses a buffer into 4 bytes using xor
 */
function bufCompress (b) {
  let tmp = b.readInt32LE(0)
  for (let i = 4; i < b.byteLength; i += 4) {
    tmp = tmp ^ b.readInt32LE(i)
  }
  const out = Buffer.alloc(4)
  out.writeInt32LE(tmp, 0)
  return out
}