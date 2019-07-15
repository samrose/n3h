# This file has been generated by node2nix 1.7.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {
    "@holochain/hcid-js-0.0.5" = {
      name = "_at_holochain_slash_hcid-js";
      packageName = "@holochain/hcid-js";
      version = "0.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/@holochain/hcid-js/-/hcid-js-0.0.5.tgz";
        sha512 = "55ehnALVASaQTIHdLSbCFYKIBHiSElhj5U4KfiqpCwNPuyQCBgWK/1D9JW254ci626IUcPvJDo7Wljmgb9fwwQ==";
      };
    };
    "accepts-1.3.5" = {
      name = "accepts";
      packageName = "accepts";
      version = "1.3.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/accepts/-/accepts-1.3.5.tgz";
        sha1 = "eb777df6011723a3b14e8a72c0805c8e86746bd2";
      };
    };
    "array-flatten-1.1.1" = {
      name = "array-flatten";
      packageName = "array-flatten";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/array-flatten/-/array-flatten-1.1.1.tgz";
        sha1 = "9a5f699051b1e7073328f2a008968b64ea2955d2";
      };
    };
    "async-limiter-1.0.0" = {
      name = "async-limiter";
      packageName = "async-limiter";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/async-limiter/-/async-limiter-1.0.0.tgz";
        sha512 = "jp/uFnooOiO+L211eZOoSyzpOITMXx1rBITauYykG3BRYPu8h0UcxsPNB04RR5vo4Tyz3+ay17tR6JVf9qzYWg==";
      };
    };
    "base-x-3.0.5" = {
      name = "base-x";
      packageName = "base-x";
      version = "3.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/base-x/-/base-x-3.0.5.tgz";
        sha512 = "C3picSgzPSLE+jW3tcBzJoGwitOtazb5B+5YmAxZm2ybmTi9LNgAtDO/jjVEBZwHoXmDBZ9m/IELj3elJVRBcA==";
      };
    };
    "bip39-2.5.0" = {
      name = "bip39";
      packageName = "bip39";
      version = "2.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/bip39/-/bip39-2.5.0.tgz";
        sha512 = "xwIx/8JKoT2+IPJpFEfXoWdYwP7UVAoUxxLNfGCfVowaJE7yg1Y5B1BVPqlUNsBq5/nGwmFkwRJ8xDW4sX8OdA==";
      };
    };
    "body-parser-1.18.3" = {
      name = "body-parser";
      packageName = "body-parser";
      version = "1.18.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/body-parser/-/body-parser-1.18.3.tgz";
        sha1 = "5b292198ffdd553b3a0f20ded0592b956955c8b4";
      };
    };
    "bs58-4.0.1" = {
      name = "bs58";
      packageName = "bs58";
      version = "4.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/bs58/-/bs58-4.0.1.tgz";
        sha1 = "be161e76c354f6f788ae4071f63f34e8c4f0a42a";
      };
    };
    "bytes-3.0.0" = {
      name = "bytes";
      packageName = "bytes";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/bytes/-/bytes-3.0.0.tgz";
        sha1 = "d32815404d689699f85a4ea4fa8755dd13a96048";
      };
    };
    "camelize-1.0.0" = {
      name = "camelize";
      packageName = "camelize";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/camelize/-/camelize-1.0.0.tgz";
        sha1 = "164a5483e630fa4321e5af07020e531831b2609b";
      };
    };
    "cipher-base-1.0.4" = {
      name = "cipher-base";
      packageName = "cipher-base";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/cipher-base/-/cipher-base-1.0.4.tgz";
        sha512 = "Kkht5ye6ZGmwv40uUDZztayT2ThLQGfnj/T71N/XzeZeo3nf8foyW7zGTsPYkEya3m5f3cAypH+qe7YOrM1U2Q==";
      };
    };
    "content-disposition-0.5.2" = {
      name = "content-disposition";
      packageName = "content-disposition";
      version = "0.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/content-disposition/-/content-disposition-0.5.2.tgz";
        sha1 = "0cf68bb9ddf5f2be7961c3a85178cb85dba78cb4";
      };
    };
    "content-security-policy-builder-2.0.0" = {
      name = "content-security-policy-builder";
      packageName = "content-security-policy-builder";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/content-security-policy-builder/-/content-security-policy-builder-2.0.0.tgz";
        sha512 = "j+Nhmj1yfZAikJLImCvPJFE29x/UuBi+/MWqggGGc515JKaZrjuei2RhULJmy0MsstW3E3htl002bwmBNMKr7w==";
      };
    };
    "content-type-1.0.4" = {
      name = "content-type";
      packageName = "content-type";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/content-type/-/content-type-1.0.4.tgz";
        sha512 = "hIP3EEPs8tB9AT1L+NUqtwOAps4mk2Zob89MWXMHjHWg9milF/j4osnnQLXBCBFBk/tvIG/tUc9mOUJiPBhPXA==";
      };
    };
    "cookie-0.3.1" = {
      name = "cookie";
      packageName = "cookie";
      version = "0.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/cookie/-/cookie-0.3.1.tgz";
        sha1 = "e7e0a1f9ef43b4c8ba925c5c5a96e806d16873bb";
      };
    };
    "cookie-signature-1.0.6" = {
      name = "cookie-signature";
      packageName = "cookie-signature";
      version = "1.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/cookie-signature/-/cookie-signature-1.0.6.tgz";
        sha1 = "e303a882b342cc3ee8ca513a79999734dab3ae2c";
      };
    };
    "create-hash-1.2.0" = {
      name = "create-hash";
      packageName = "create-hash";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/create-hash/-/create-hash-1.2.0.tgz";
        sha512 = "z00bCGNHDG8mHAkP7CtT1qVu+bFQUPjYq/4Iv3C3kWjTFV10zIjfSoeqXo9Asws8gwSHDGj/hl2u4OGIjapeCg==";
      };
    };
    "create-hmac-1.1.7" = {
      name = "create-hmac";
      packageName = "create-hmac";
      version = "1.1.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/create-hmac/-/create-hmac-1.1.7.tgz";
        sha512 = "MJG9liiZ+ogc4TzUwuvbER1JRdgvUFSB5+VR/g5h82fGaIRWMWddtKBHi7/sVhfjQZ6SehlyhvQYrcYkaUIpLg==";
      };
    };
    "dasherize-2.0.0" = {
      name = "dasherize";
      packageName = "dasherize";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/dasherize/-/dasherize-2.0.0.tgz";
        sha1 = "6d809c9cd0cf7bb8952d80fc84fa13d47ddb1308";
      };
    };
    "debug-2.6.9" = {
      name = "debug";
      packageName = "debug";
      version = "2.6.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/debug/-/debug-2.6.9.tgz";
        sha512 = "bC7ElrdJaJnPbAP+1EotYvqZsb3ecl5wi6Bfi6BJTUcNowp6cvspg0jXznRTKDjm/E7AdgFBVeAPVMNcKGsHMA==";
      };
    };
    "depd-1.1.2" = {
      name = "depd";
      packageName = "depd";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/depd/-/depd-1.1.2.tgz";
        sha1 = "9bcd52e14c097763e749b274c4346ed2e560b5a9";
      };
    };
    "depd-2.0.0" = {
      name = "depd";
      packageName = "depd";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/depd/-/depd-2.0.0.tgz";
        sha512 = "g7nH6P6dyDioJogAAGprGpCtVImJhpPk/roCzdb3fIh61/s/nPsfR6onyMwkCAR/OlC3yBC0lESvUoQEAssIrw==";
      };
    };
    "destroy-1.0.4" = {
      name = "destroy";
      packageName = "destroy";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/destroy/-/destroy-1.0.4.tgz";
        sha1 = "978857442c44749e4206613e37946205826abd80";
      };
    };
    "dns-packet-4.2.0" = {
      name = "dns-packet";
      packageName = "dns-packet";
      version = "4.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/dns-packet/-/dns-packet-4.2.0.tgz";
        sha512 = "bn1AKpfkFbm0MIioOMHZ5qJzl2uypdBwI4nYNsqvhjsegBhcKJUlCrMPWLx6JEezRjxZmxhtIz/FkBEur2l8Cw==";
      };
    };
    "dns-prefetch-control-0.1.0" = {
      name = "dns-prefetch-control";
      packageName = "dns-prefetch-control";
      version = "0.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/dns-prefetch-control/-/dns-prefetch-control-0.1.0.tgz";
        sha1 = "60ddb457774e178f1f9415f0cabb0e85b0b300b2";
      };
    };
    "dont-sniff-mimetype-1.0.0" = {
      name = "dont-sniff-mimetype";
      packageName = "dont-sniff-mimetype";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/dont-sniff-mimetype/-/dont-sniff-mimetype-1.0.0.tgz";
        sha1 = "5932890dc9f4e2f19e5eb02a20026e5e5efc8f58";
      };
    };
    "ee-first-1.1.1" = {
      name = "ee-first";
      packageName = "ee-first";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz";
        sha1 = "590c61156b0ae2f4f0255732a158b266bc56b21d";
      };
    };
    "encodeurl-1.0.2" = {
      name = "encodeurl";
      packageName = "encodeurl";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/encodeurl/-/encodeurl-1.0.2.tgz";
        sha1 = "ad3ff4c86ec2d029322f5a02c3a9a606c95b3f59";
      };
    };
    "escape-html-1.0.3" = {
      name = "escape-html";
      packageName = "escape-html";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/escape-html/-/escape-html-1.0.3.tgz";
        sha1 = "0258eae4d3d0c0974de1c169188ef0051d1d1988";
      };
    };
    "etag-1.8.1" = {
      name = "etag";
      packageName = "etag";
      version = "1.8.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/etag/-/etag-1.8.1.tgz";
        sha1 = "41ae2eeb65efa62268aebfea83ac7d79299b0887";
      };
    };
    "event-lite-0.1.2" = {
      name = "event-lite";
      packageName = "event-lite";
      version = "0.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/event-lite/-/event-lite-0.1.2.tgz";
        sha512 = "HnSYx1BsJ87/p6swwzv+2v6B4X+uxUteoDfRxsAb1S1BePzQqOLevVmkdA15GHJVd9A9Ok6wygUR18Hu0YeV9g==";
      };
    };
    "expect-ct-0.1.1" = {
      name = "expect-ct";
      packageName = "expect-ct";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/expect-ct/-/expect-ct-0.1.1.tgz";
        sha512 = "ngXzTfoRGG7fYens3/RMb6yYoVLvLMfmsSllP/mZPxNHgFq41TmPSLF/nLY7fwoclI2vElvAmILFWGUYqdjfCg==";
      };
    };
    "express-4.16.4" = {
      name = "express";
      packageName = "express";
      version = "4.16.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/express/-/express-4.16.4.tgz";
        sha512 = "j12Uuyb4FMrd/qQAm6uCHAkPtO8FDTRJZBDd5D2KOL2eLaz1yUNdUB/NOIyq0iU4q4cFarsUCrnFDPBcnksuOg==";
      };
    };
    "express-ws-4.0.0" = {
      name = "express-ws";
      packageName = "express-ws";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/express-ws/-/express-ws-4.0.0.tgz";
        sha512 = "KEyUw8AwRET2iFjFsI1EJQrJ/fHeGiJtgpYgEWG3yDv4l/To/m3a2GaYfeGyB3lsWdvbesjF5XCMx+SVBgAAYw==";
      };
    };
    "feature-policy-0.2.0" = {
      name = "feature-policy";
      packageName = "feature-policy";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/feature-policy/-/feature-policy-0.2.0.tgz";
        sha512 = "2hGrlv6efG4hscYVZeaYjpzpT6I2OZgYqE2yDUzeAcKj2D1SH0AsEzqJNXzdoglEddcIXQQYop3lD97XpG75Jw==";
      };
    };
    "finalhandler-1.1.1" = {
      name = "finalhandler";
      packageName = "finalhandler";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/finalhandler/-/finalhandler-1.1.1.tgz";
        sha512 = "Y1GUDo39ez4aHAw7MysnUD5JzYX+WaIj8I57kO3aEPT1fFRL4sr7mjei97FgnwhAyyzRYmQZaTHb2+9uZ1dPtg==";
      };
    };
    "forwarded-0.1.2" = {
      name = "forwarded";
      packageName = "forwarded";
      version = "0.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/forwarded/-/forwarded-0.1.2.tgz";
        sha1 = "98c23dab1175657b8c0573e8ceccd91b0ff18c84";
      };
    };
    "frameguard-3.0.0" = {
      name = "frameguard";
      packageName = "frameguard";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/frameguard/-/frameguard-3.0.0.tgz";
        sha1 = "7bcad469ee7b96e91d12ceb3959c78235a9272e9";
      };
    };
    "fresh-0.5.2" = {
      name = "fresh";
      packageName = "fresh";
      version = "0.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/fresh/-/fresh-0.5.2.tgz";
        sha1 = "3d8cadd90d976569fa835ab1f8e4b23a105605a7";
      };
    };
    "hash-base-3.0.4" = {
      name = "hash-base";
      packageName = "hash-base";
      version = "3.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/hash-base/-/hash-base-3.0.4.tgz";
        sha1 = "5fc8686847ecd73499403319a6b0a3f3f6ae4918";
      };
    };
    "helmet-3.16.0" = {
      name = "helmet";
      packageName = "helmet";
      version = "3.16.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/helmet/-/helmet-3.16.0.tgz";
        sha512 = "rsTKRogc5OYGlvSHuq5QsmOsOzF6uDoMqpfh+Np8r23+QxDq+SUx90Rf8HyIKQVl7H6NswZEwfcykinbAeZ6UQ==";
      };
    };
    "helmet-crossdomain-0.3.0" = {
      name = "helmet-crossdomain";
      packageName = "helmet-crossdomain";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/helmet-crossdomain/-/helmet-crossdomain-0.3.0.tgz";
        sha512 = "YiXhj0E35nC4Na5EPE4mTfoXMf9JTGpN4OtB4aLqShKuH9d2HNaJX5MQoglO6STVka0uMsHyG5lCut5Kzsy7Lg==";
      };
    };
    "helmet-csp-2.7.1" = {
      name = "helmet-csp";
      packageName = "helmet-csp";
      version = "2.7.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/helmet-csp/-/helmet-csp-2.7.1.tgz";
        sha512 = "sCHwywg4daQ2mY0YYwXSZRsgcCeerUwxMwNixGA7aMLkVmPTYBl7gJoZDHOZyXkqPrtuDT3s2B1A+RLI7WxSdQ==";
      };
    };
    "hide-powered-by-1.0.0" = {
      name = "hide-powered-by";
      packageName = "hide-powered-by";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/hide-powered-by/-/hide-powered-by-1.0.0.tgz";
        sha1 = "4a85ad65881f62857fc70af7174a1184dccce32b";
      };
    };
    "hpkp-2.0.0" = {
      name = "hpkp";
      packageName = "hpkp";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/hpkp/-/hpkp-2.0.0.tgz";
        sha1 = "10e142264e76215a5d30c44ec43de64dee6d1672";
      };
    };
    "hsts-2.2.0" = {
      name = "hsts";
      packageName = "hsts";
      version = "2.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/hsts/-/hsts-2.2.0.tgz";
        sha512 = "ToaTnQ2TbJkochoVcdXYm4HOCliNozlviNsg+X2XQLQvZNI/kCHR9rZxVYpJB3UPcHz80PgxRyWQ7PdU1r+VBQ==";
      };
    };
    "http-errors-1.6.3" = {
      name = "http-errors";
      packageName = "http-errors";
      version = "1.6.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/http-errors/-/http-errors-1.6.3.tgz";
        sha1 = "8b55680bb4be283a0b5bf4ea2e38580be1d9320d";
      };
    };
    "iconv-lite-0.4.23" = {
      name = "iconv-lite";
      packageName = "iconv-lite";
      version = "0.4.23";
      src = fetchurl {
        url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.23.tgz";
        sha512 = "neyTUVFtahjf0mB3dZT77u+8O0QB89jFdnBkd5P1JgYPbPaia3gXXOVL2fq8VyU2gMMD7SaN7QukTB/pmXYvDA==";
      };
    };
    "ieee754-1.1.12" = {
      name = "ieee754";
      packageName = "ieee754";
      version = "1.1.12";
      src = fetchurl {
        url = "https://registry.npmjs.org/ieee754/-/ieee754-1.1.12.tgz";
        sha512 = "GguP+DRY+pJ3soyIiGPTvdiVXjZ+DbXOxGpXn3eMvNW4x4irjqXm4wHKscC+TfxSJ0yw/S1F24tqdMNsMZTiLA==";
      };
    };
    "ienoopen-1.1.0" = {
      name = "ienoopen";
      packageName = "ienoopen";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ienoopen/-/ienoopen-1.1.0.tgz";
        sha512 = "MFs36e/ca6ohEKtinTJ5VvAJ6oDRAYFdYXweUnGY9L9vcoqFOU4n2ZhmJ0C4z/cwGZ3YIQRSB3XZ1+ghZkY5NQ==";
      };
    };
    "inherits-2.0.3" = {
      name = "inherits";
      packageName = "inherits";
      version = "2.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/inherits/-/inherits-2.0.3.tgz";
        sha1 = "633c2c83e3da42a502f52466022480f4208261de";
      };
    };
    "ini-1.3.5" = {
      name = "ini";
      packageName = "ini";
      version = "1.3.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/ini/-/ini-1.3.5.tgz";
        sha512 = "RZY5huIKCMRWDUqZlEi72f/lmXKMvuszcMBduliQ3nnWbx9X/ZBQO7DijMEYS9EhHBb2qacRUMtC7svLwe0lcw==";
      };
    };
    "int64-buffer-0.1.10" = {
      name = "int64-buffer";
      packageName = "int64-buffer";
      version = "0.1.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/int64-buffer/-/int64-buffer-0.1.10.tgz";
        sha1 = "277b228a87d95ad777d07c13832022406a473423";
      };
    };
    "ip-1.1.5" = {
      name = "ip";
      packageName = "ip";
      version = "1.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/ip/-/ip-1.1.5.tgz";
        sha1 = "bdded70114290828c0a039e72ef25f5aaec4354a";
      };
    };
    "ipaddr.js-1.8.0" = {
      name = "ipaddr.js";
      packageName = "ipaddr.js";
      version = "1.8.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ipaddr.js/-/ipaddr.js-1.8.0.tgz";
        sha1 = "eaa33d6ddd7ace8f7f6fe0c9ca0440e706738b1e";
      };
    };
    "isarray-1.0.0" = {
      name = "isarray";
      packageName = "isarray";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz";
        sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
      };
    };
    "md5.js-1.3.5" = {
      name = "md5.js";
      packageName = "md5.js";
      version = "1.3.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/md5.js/-/md5.js-1.3.5.tgz";
        sha512 = "xitP+WxNPcTTOgnTJcrhM0xvdPepipPSf3I8EIpGKeFLjt3PlJLIDG3u8EX53ZIubkb+5U2+3rELYpEhHhzdkg==";
      };
    };
    "media-typer-0.3.0" = {
      name = "media-typer";
      packageName = "media-typer";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/media-typer/-/media-typer-0.3.0.tgz";
        sha1 = "8710d7af0aa626f8fffa1ce00168545263255748";
      };
    };
    "merge-descriptors-1.0.1" = {
      name = "merge-descriptors";
      packageName = "merge-descriptors";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/merge-descriptors/-/merge-descriptors-1.0.1.tgz";
        sha1 = "b00aaa556dd8b44568150ec9d1b953f3f90cbb61";
      };
    };
    "methods-1.1.2" = {
      name = "methods";
      packageName = "methods";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/methods/-/methods-1.1.2.tgz";
        sha1 = "5529a4d67654134edcc5266656835b0f851afcee";
      };
    };
    "mime-1.4.1" = {
      name = "mime";
      packageName = "mime";
      version = "1.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime/-/mime-1.4.1.tgz";
        sha512 = "KI1+qOZu5DcW6wayYHSzR/tXKCDC5Om4s1z2QJjDULzLcmf3DvzS7oluY4HCTrc+9FiKmWUgeNLg7W3uIQvxtQ==";
      };
    };
    "mime-db-1.38.0" = {
      name = "mime-db";
      packageName = "mime-db";
      version = "1.38.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-db/-/mime-db-1.38.0.tgz";
        sha512 = "bqVioMFFzc2awcdJZIzR3HjZFX20QhilVS7hytkKrv7xFAn8bM1gzc/FOX2awLISvWe0PV8ptFKcon+wZ5qYkg==";
      };
    };
    "mime-types-2.1.22" = {
      name = "mime-types";
      packageName = "mime-types";
      version = "2.1.22";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.22.tgz";
        sha512 = "aGl6TZGnhm/li6F7yx82bJiBZwgiEa4Hf6CNr8YO+r5UHr53tSTYZb102zyU50DOWWKeOv0uQLRL0/9EiKWCog==";
      };
    };
    "ms-2.0.0" = {
      name = "ms";
      packageName = "ms";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ms/-/ms-2.0.0.tgz";
        sha1 = "5608aeadfc00be6c2901df5f9861788de0d597c8";
      };
    };
    "msgpack-lite-0.1.26" = {
      name = "msgpack-lite";
      packageName = "msgpack-lite";
      version = "0.1.26";
      src = fetchurl {
        url = "https://registry.npmjs.org/msgpack-lite/-/msgpack-lite-0.1.26.tgz";
        sha1 = "dd3c50b26f059f25e7edee3644418358e2a9ad89";
      };
    };
    "multicast-dns-git://github.com/holochain/multicast-dns#05fbb6fe0e3902980d3a84f9c32c9d1b1d02f1b1" = {
      name = "multicast-dns";
      packageName = "multicast-dns";
      version = "7.2.0";
      src = fetchgit {
        url = "git://github.com/holochain/multicast-dns";
        rev = "05fbb6fe0e3902980d3a84f9c32c9d1b1d02f1b1";
        sha256 = "cd37aeb9a06f483c2a7b0fd0b30811cd09edc326264294942133d5c8150360ae";
      };
    };
    "nan-2.13.0" = {
      name = "nan";
      packageName = "nan";
      version = "2.13.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/nan/-/nan-2.13.0.tgz";
        sha512 = "5DDQvN0luhXdut8SCwzm/ZuAX2W+fwhqNzfq7CZ+OJzQ6NwpcqmIGyLD1R8MEt7BeErzcsI0JLr4pND2pNp2Cw==";
      };
    };
    "negotiator-0.6.1" = {
      name = "negotiator";
      packageName = "negotiator";
      version = "0.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/negotiator/-/negotiator-0.6.1.tgz";
        sha1 = "2b327184e8992101177b28563fb5e7102acd0ca9";
      };
    };
    "nocache-2.0.0" = {
      name = "nocache";
      packageName = "nocache";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/nocache/-/nocache-2.0.0.tgz";
        sha1 = "202b48021a0c4cbde2df80de15a17443c8b43980";
      };
    };
    "node-forge-0.7.6" = {
      name = "node-forge";
      packageName = "node-forge";
      version = "0.7.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/node-forge/-/node-forge-0.7.6.tgz";
        sha512 = "sol30LUpz1jQFBjOKwbjxijiE3b6pjd74YwfD0fJOKPjF+fONKb2Yg8rYgS6+bK6VDl+/wfr4IYpC7jDzLUIfw==";
      };
    };
    "node-gyp-build-3.8.0" = {
      name = "node-gyp-build";
      packageName = "node-gyp-build";
      version = "3.8.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/node-gyp-build/-/node-gyp-build-3.8.0.tgz";
        sha512 = "bYbpIHyRqZ7sVWXxGpz8QIRug5JZc/hzZH4GbdT9HTZi6WmKCZ8GLvP8OZ9TTiIBvwPFKgtGrlWQSXDAvYdsPw==";
      };
    };
    "on-finished-2.3.0" = {
      name = "on-finished";
      packageName = "on-finished";
      version = "2.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/on-finished/-/on-finished-2.3.0.tgz";
        sha1 = "20f1336481b083cd75337992a16971aa2d906947";
      };
    };
    "parseurl-1.3.2" = {
      name = "parseurl";
      packageName = "parseurl";
      version = "1.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/parseurl/-/parseurl-1.3.2.tgz";
        sha1 = "fc289d4ed8993119460c156253262cdc8de65bf3";
      };
    };
    "path-to-regexp-0.1.7" = {
      name = "path-to-regexp";
      packageName = "path-to-regexp";
      version = "0.1.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-to-regexp/-/path-to-regexp-0.1.7.tgz";
        sha1 = "df604178005f522f15eb4490e7247a1bfaa67f8c";
      };
    };
    "pbkdf2-3.0.17" = {
      name = "pbkdf2";
      packageName = "pbkdf2";
      version = "3.0.17";
      src = fetchurl {
        url = "https://registry.npmjs.org/pbkdf2/-/pbkdf2-3.0.17.tgz";
        sha512 = "U/il5MsrZp7mGg3mSQfn742na2T+1/vHDCG5/iTI3X9MKUuYUZVLQhyRsg06mCgDBTd57TxzgZt7P+fYfjRLtA==";
      };
    };
    "platform-1.3.5" = {
      name = "platform";
      packageName = "platform";
      version = "1.3.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/platform/-/platform-1.3.5.tgz";
        sha512 = "TuvHS8AOIZNAlE77WUDiR4rySV/VMptyMfcfeoMgs4P8apaZM3JrnbzBiixKUv+XR6i+BXrQh8WAnjaSPFO65Q==";
      };
    };
    "proxy-addr-2.0.4" = {
      name = "proxy-addr";
      packageName = "proxy-addr";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/proxy-addr/-/proxy-addr-2.0.4.tgz";
        sha512 = "5erio2h9jp5CHGwcybmxmVqHmnCBZeewlfJ0pex+UW7Qny7OOZXTtH56TGNyBizkgiOwhJtMKrVzDTeKcySZwA==";
      };
    };
    "qs-6.5.2" = {
      name = "qs";
      packageName = "qs";
      version = "6.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/qs/-/qs-6.5.2.tgz";
        sha512 = "N5ZAX4/LxJmF+7wN74pUD6qAh9/wnvdQcjq9TZjevvXzSUo7bfmw91saqMjzGS2xq91/odN2dW/WOl7qQHNDGA==";
      };
    };
    "randombytes-2.1.0" = {
      name = "randombytes";
      packageName = "randombytes";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/randombytes/-/randombytes-2.1.0.tgz";
        sha512 = "vYl3iOX+4CKUWuxGi9Ukhie6fsqXqS9FE2Zaic4tNFD2N2QQaXOMFbuKK4QmDHC0JO6B1Zp41J0LpT0oR68amQ==";
      };
    };
    "range-parser-1.2.0" = {
      name = "range-parser";
      packageName = "range-parser";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/range-parser/-/range-parser-1.2.0.tgz";
        sha1 = "f49be6b487894ddc40dcc94a322f611092e00d5e";
      };
    };
    "raw-body-2.3.3" = {
      name = "raw-body";
      packageName = "raw-body";
      version = "2.3.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/raw-body/-/raw-body-2.3.3.tgz";
        sha512 = "9esiElv1BrZoI3rCDuOuKCBRbuApGGaDPQfjSflGxdy4oyzqghxu6klEkkVIvBje+FF0BX9coEv8KqW6X/7njw==";
      };
    };
    "referrer-policy-1.1.0" = {
      name = "referrer-policy";
      packageName = "referrer-policy";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/referrer-policy/-/referrer-policy-1.1.0.tgz";
        sha1 = "35774eb735bf50fb6c078e83334b472350207d79";
      };
    };
    "ripemd160-2.0.2" = {
      name = "ripemd160";
      packageName = "ripemd160";
      version = "2.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/ripemd160/-/ripemd160-2.0.2.tgz";
        sha512 = "ii4iagi25WusVoiC4B4lq7pbXfAp3D9v5CwfkY33vffw2+pkDjY1D8GaN7spsxvCSx8dkPqOZCEZyfxcmJG2IA==";
      };
    };
    "safe-buffer-5.1.2" = {
      name = "safe-buffer";
      packageName = "safe-buffer";
      version = "5.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz";
        sha512 = "Gd2UZBJDkXlY7GbJxfsE8/nvKkUEU1G38c1siN6QP6a9PT9MmHB8GnpscSmMJSoF8LOIrt8ud/wPtojys4G6+g==";
      };
    };
    "safer-buffer-2.1.2" = {
      name = "safer-buffer";
      packageName = "safer-buffer";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz";
        sha512 = "YZo3K82SD7Riyi0E1EQPojLz7kpepnSQI9IyPbHHg1XXXevb5dJI7tpyN2ADxGcQbHG7vcyRHk0cbwqcQriUtg==";
      };
    };
    "send-0.16.2" = {
      name = "send";
      packageName = "send";
      version = "0.16.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/send/-/send-0.16.2.tgz";
        sha512 = "E64YFPUssFHEFBvpbbjr44NCLtI1AohxQ8ZSiJjQLskAdKuriYEP6VyGEsRDH8ScozGpkaX1BGvhanqCwkcEZw==";
      };
    };
    "serve-static-1.13.2" = {
      name = "serve-static";
      packageName = "serve-static";
      version = "1.13.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/serve-static/-/serve-static-1.13.2.tgz";
        sha512 = "p/tdJrO4U387R9oMjb1oj7qSMaMfmOyd4j9hOFoxZe2baQszgHcSWjuya/CiT5kgZZKRudHNOA0pYXOl8rQ5nw==";
      };
    };
    "setprototypeof-1.1.0" = {
      name = "setprototypeof";
      packageName = "setprototypeof";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/setprototypeof/-/setprototypeof-1.1.0.tgz";
        sha512 = "BvE/TwpZX4FXExxOxZyRGQQv651MSwmWKZGqvmPcRIjDqWub67kTKuIMx43cZZrS/cBBzwBcNDWoFxt2XEFIpQ==";
      };
    };
    "sha.js-2.4.11" = {
      name = "sha.js";
      packageName = "sha.js";
      version = "2.4.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/sha.js/-/sha.js-2.4.11.tgz";
        sha512 = "QMEp5B7cftE7APOjk5Y6xgrbWu+WkLVQwk8JNjZ8nKRciZaByEW6MubieAiToS7+dwvrjGhH8jRXz3MVd0AYqQ==";
      };
    };
    "sodium-native-2.3.0" = {
      name = "sodium-native";
      packageName = "sodium-native";
      version = "2.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/sodium-native/-/sodium-native-2.3.0.tgz";
        sha512 = "TYId1m2iLXXot2Q3KA6u8Ti9pmL24T2cm8nb9OUGFFmTxdw4I+vnkjcPVA4LT1acw+A86iJkEn+8iV51jcTWUg==";
      };
    };
    "statuses-1.4.0" = {
      name = "statuses";
      packageName = "statuses";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/statuses/-/statuses-1.4.0.tgz";
        sha512 = "zhSCtt8v2NDrRlPQpCNtw/heZLtfUDqxBM1udqikb/Hbk52LK4nQSwr10u77iopCW5LsyHpuXS0GnEc48mLeew==";
      };
    };
    "text-encoding-0.7.0" = {
      name = "text-encoding";
      packageName = "text-encoding";
      version = "0.7.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/text-encoding/-/text-encoding-0.7.0.tgz";
        sha512 = "oJQ3f1hrOnbRLOcwKz0Liq2IcrvDeZRHXhd9RgLrsT+DjWY/nty1Hi7v3dtkaEYbPYe0mUoOfzRrMwfXXwgPUA==";
      };
    };
    "thunky-1.0.3" = {
      name = "thunky";
      packageName = "thunky";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/thunky/-/thunky-1.0.3.tgz";
        sha512 = "YwT8pjmNcAXBZqrubu22P4FYsh2D4dxRmnWBOL8Jk8bUcRUtc5326kx32tuTmFDAZtLOGEVNl8POAR8j896Iow==";
      };
    };
    "type-is-1.6.16" = {
      name = "type-is";
      packageName = "type-is";
      version = "1.6.16";
      src = fetchurl {
        url = "https://registry.npmjs.org/type-is/-/type-is-1.6.16.tgz";
        sha512 = "HRkVv/5qY2G6I8iab9cI7v1bOIdhm94dVjQCPFElW9W+3GeDOSHmy2EBYe4VTApuzolPcmgFTN3ftVJRKR2J9Q==";
      };
    };
    "unorm-1.5.0" = {
      name = "unorm";
      packageName = "unorm";
      version = "1.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/unorm/-/unorm-1.5.0.tgz";
        sha512 = "sMfSWoiRaXXeDZSXC+YRZ23H4xchQpwxjpw1tmfR+kgbBCaOgln4NI0LXejJIhnBuKINrB3WRn+ZI8IWssirVw==";
      };
    };
    "unpipe-1.0.0" = {
      name = "unpipe";
      packageName = "unpipe";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz";
        sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
      };
    };
    "utils-merge-1.0.1" = {
      name = "utils-merge";
      packageName = "utils-merge";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/utils-merge/-/utils-merge-1.0.1.tgz";
        sha1 = "9f95710f50a267947b2ccc124741c1028427e713";
      };
    };
    "vary-1.1.2" = {
      name = "vary";
      packageName = "vary";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/vary/-/vary-1.1.2.tgz";
        sha1 = "2299f02c6ded30d4a5961b0b9f74524a18f634fc";
      };
    };
    "ws-5.2.2" = {
      name = "ws";
      packageName = "ws";
      version = "5.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/ws/-/ws-5.2.2.tgz";
        sha512 = "jaHFD6PFv6UgoIVda6qZllptQsMlDEJkTQcybzzXDYM1XO9Y8em691FGMPmM46WGyLU4z9KMgQN+qrux/nhlHA==";
      };
    };
    "ws-6.2.0" = {
      name = "ws";
      packageName = "ws";
      version = "6.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ws/-/ws-6.2.0.tgz";
        sha512 = "deZYUNlt2O4buFCa3t5bKLf8A7FPP/TVjwOeVNpw818Ma5nk4MLXls2eoEGS39o8119QIYxTrTDoPQ5B/gTD6w==";
      };
    };
    "x-xss-protection-1.1.0" = {
      name = "x-xss-protection";
      packageName = "x-xss-protection";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/x-xss-protection/-/x-xss-protection-1.1.0.tgz";
        sha512 = "rx3GzJlgEeZ08MIcDsU2vY2B1QEriUKJTSiNHHUIem6eg9pzVOr2TL3Y4Pd6TMAM5D5azGjcxqI62piITBDHVg==";
      };
    };
  };
  args = {
    name = "n3h";
    packageName = "n3h";
    version = "0.0.17-alpha";
    src = ./.;
    dependencies = [
      sources."@holochain/hcid-js-0.0.5"
      sources."accepts-1.3.5"
      sources."array-flatten-1.1.1"
      sources."async-limiter-1.0.0"
      sources."base-x-3.0.5"
      sources."bip39-2.5.0"
      sources."body-parser-1.18.3"
      sources."bs58-4.0.1"
      sources."bytes-3.0.0"
      sources."camelize-1.0.0"
      sources."cipher-base-1.0.4"
      sources."content-disposition-0.5.2"
      sources."content-security-policy-builder-2.0.0"
      sources."content-type-1.0.4"
      sources."cookie-0.3.1"
      sources."cookie-signature-1.0.6"
      sources."create-hash-1.2.0"
      sources."create-hmac-1.1.7"
      sources."dasherize-2.0.0"
      sources."debug-2.6.9"
      sources."depd-1.1.2"
      sources."destroy-1.0.4"
      sources."dns-packet-4.2.0"
      sources."dns-prefetch-control-0.1.0"
      sources."dont-sniff-mimetype-1.0.0"
      sources."ee-first-1.1.1"
      sources."encodeurl-1.0.2"
      sources."escape-html-1.0.3"
      sources."etag-1.8.1"
      sources."event-lite-0.1.2"
      sources."expect-ct-0.1.1"
      sources."express-4.16.4"
      (sources."express-ws-4.0.0" // {
        dependencies = [
          sources."ws-5.2.2"
        ];
      })
      sources."feature-policy-0.2.0"
      sources."finalhandler-1.1.1"
      sources."forwarded-0.1.2"
      sources."frameguard-3.0.0"
      sources."fresh-0.5.2"
      sources."hash-base-3.0.4"
      (sources."helmet-3.16.0" // {
        dependencies = [
          sources."depd-2.0.0"
        ];
      })
      sources."helmet-crossdomain-0.3.0"
      sources."helmet-csp-2.7.1"
      sources."hide-powered-by-1.0.0"
      sources."hpkp-2.0.0"
      (sources."hsts-2.2.0" // {
        dependencies = [
          sources."depd-2.0.0"
        ];
      })
      sources."http-errors-1.6.3"
      sources."iconv-lite-0.4.23"
      sources."ieee754-1.1.12"
      sources."ienoopen-1.1.0"
      sources."inherits-2.0.3"
      sources."ini-1.3.5"
      sources."int64-buffer-0.1.10"
      sources."ip-1.1.5"
      sources."ipaddr.js-1.8.0"
      sources."isarray-1.0.0"
      sources."md5.js-1.3.5"
      sources."media-typer-0.3.0"
      sources."merge-descriptors-1.0.1"
      sources."methods-1.1.2"
      sources."mime-1.4.1"
      sources."mime-db-1.38.0"
      sources."mime-types-2.1.22"
      sources."ms-2.0.0"
      sources."msgpack-lite-0.1.26"
      sources."multicast-dns-git://github.com/holochain/multicast-dns#05fbb6fe0e3902980d3a84f9c32c9d1b1d02f1b1"
      sources."nan-2.13.0"
      sources."negotiator-0.6.1"
      sources."nocache-2.0.0"
      sources."node-forge-0.7.6"
      sources."node-gyp-build-3.8.0"
      sources."on-finished-2.3.0"
      sources."parseurl-1.3.2"
      sources."path-to-regexp-0.1.7"
      sources."pbkdf2-3.0.17"
      sources."platform-1.3.5"
      sources."proxy-addr-2.0.4"
      sources."qs-6.5.2"
      sources."randombytes-2.1.0"
      sources."range-parser-1.2.0"
      sources."raw-body-2.3.3"
      sources."referrer-policy-1.1.0"
      sources."ripemd160-2.0.2"
      sources."safe-buffer-5.1.2"
      sources."safer-buffer-2.1.2"
      sources."send-0.16.2"
      sources."serve-static-1.13.2"
      sources."setprototypeof-1.1.0"
      sources."sha.js-2.4.11"
      sources."sodium-native-2.3.0"
      sources."statuses-1.4.0"
      sources."text-encoding-0.7.0"
      sources."thunky-1.0.3"
      sources."type-is-1.6.16"
      sources."unorm-1.5.0"
      sources."unpipe-1.0.0"
      sources."utils-merge-1.0.1"
      sources."vary-1.1.2"
      sources."ws-6.2.0"
      sources."x-xss-protection-1.1.0"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "nodejs holochain networking library with swapable / configurable modules";
      license = "Apache-2.0";
    };
    production = true;
    bypassCache = true;
    reconstructLock = false;
  };
in
{
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
}