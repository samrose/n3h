const EventEmitter = require('events')
// const crypto = require('crypto')

// const msgpack = require('msgpack-lite')
const { MoSocket } = require('mosocket')
const { Server: IpcServer } = require('node-p2p-ipc')

const mnemonic = require('./mnemonic/mnemonic')

const protocol = {
  l3h: require('./protocol/l3h')
}

/**
 */
function _friend (b) {
  if (!(b instanceof Buffer)) {
    b = Buffer.from(b, 'base64')
  }
  return mnemonic.toMnemonic(b.slice(0, 4)).join('-')
}


/**
 */
class Node extends EventEmitter {
  /**
   */
  constructor (config) {
    super()
    this._config = config
    this._socket = new MoSocket(config.mosocket)
    this._allNodes = new Map()
    this._allNodesBySession = new Map()

    this._protocol = protocol.l3h.install(this)

    this._socket.on('connection', proxy => {
      this._initRemote(proxy)
    })
    const removeSession = (proxy) => {
      const ref = this._allNodesBySession.get(proxy)
      if (!ref) return
      this._allNodesBySession.delete(proxy)
      this._allNodes.delete(ref.remoteId)
      this.emit('connectionClosed', ref.remoteId)
    }
    this._socket.on('sessionError', (proxy, err) => {
      console.error('session error',
        _friend(proxy), err.stack || err.toString())
      removeSession(proxy)
    })
    this._socket.on('sessionClose', proxy => {
      removeSession(proxy)
    })
  }

  /**
   */
  installProtocol (...args) {
    return this._socket.installProtocol(...args)
  }

  /**
   */
  async init () {
    console.log('initializing node, ipc socket: ' + this._config.ipc.socket)
    this._ipc = new IpcServer([this._config.ipc.socket])
    this._ipc.on('call', opt => {
      this.emit('ipcMessage', {
        data: opt.data,
        resolve: data => {
          opt.resolve()
          this._ipc.recvCallResp(opt.messageId, Buffer.alloc(0), data || Buffer.alloc(0))
        },
        reject: opt.reject
      })
    })
    await this._ipc.ready()
  }

  /**
   */
  ipcSendMessage (data) {
    this._ipc.recvSend(Buffer.alloc(0), data || Buffer.alloc(0))
  }

  /**
   */
  bind (ma) {
    this._checkGossip()
    return this._socket.bind(ma)
  }

  /**
   */
  async connect (ma) {
    this._checkGossip()
    await this._socket.connect(ma)
  }

  /**
   */
  close () {
    clearInterval(this._gossipTimer)
    this._gossipTimer = null
    this._socket.close()
    this._socket = null
    this._ipc.close()
    this._ipc = null
  }

  /**
   */
  getListeningAddrs () {
    return this._socket.getListeningAddrs()
  }

  // -- protected -- //

  $checkGossip (endpoints) {
    for (let ep of endpoints) {
      if (ep[0] !== this._config.nodeId.id && !this._allNodes.has(ep[0])) {
        console.log('new endpoint found:', _friend(ep[0]), ep[1])
        this._allNodes.set(ep[0], {}) // dummy
        this.connect(ep[1])
      }
    }
  }

  // -- private -- //

  async _initRemote (proxy) {
    const result = await this._protocol.v([proxy])
    result.proxy = proxy
    this._allNodes.set(result.remoteId, result)
    this._allNodesBySession.set(result.proxy, result)
    console.log(_friend(this._config.nodeId.id), 'found node', _friend(result.remoteId), result.remoteEndpoint)
    this._checkGossip()
    this._gossip()
    this.emit('connection', result.remoteId)
  }

  _checkGossip () {
    if (this._gossipTimer) {
      return
    }
    this._gossipTimer = setInterval(() => {
      this._gossip()
    }, 1000)
  }

  async _gossip () {
    if (typeof this._lastGossipIndex !== 'number') {
      this._lastGossipIndex = -1
    }
    this._lastGossipIndex++
    if (this._lastGossipIndex >= this._allNodes.size) {
      this._lastGossipIndex = 0
    }
    const rem = Array.from(this._allNodes.values())[this._lastGossipIndex]

    if (!rem || !rem.proxy) {
      return
    }
    this._protocol.w([rem.proxy])
  }
}

Node._friend = _friend

exports.Node = Node