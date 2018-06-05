# bcoin-ipc-node [![Build Status](https://travis-ci.org/ChronoBank/bcoin-ipc-node.svg?branch=master)](https://travis-ci.org/ChronoBank/bcoin-ipc-node)

Extended version of [bcoin](http://bcoin.io) node.

### Installation

Just clone the repo and run the index.js.

#### About
The bcoin - is an alternative bitcoin node implementation, written in node.js. The extended version also includes the IPC interface for communication with node.


##### сonfigure your .env

To apply your configuration, create a .env file in root folder of repo (in case it's not present already).
Below is the expamle configuration:

```
CACHE_SIZE=1024
COIN_SIZE=30000000
ZMQ=tcp://127.0.0.1:43332

IPC_NAME=bitcoin
IPC_PATH=/tmp/
APP_SPACE=app.
```

The options are presented below:

| name | description|
| ------ | ------ |
| CACHE_SIZE   | the cache size (in mb). The cache stores the recent blocks for fast access
| COIN_SIZE   | the coin cache size (in mb). The cache stores the recent coins for fast access
| IPC_NAME   | name of IPC file
| IPC_PATH   | the IPC path
| APP_SPACE   | is a prefix for IPC_NAME. For instance, in case with the config presented above,  the full name with APP_SPACE will be app.bitcoin





License
----
 [GNU AGPLv3](LICENSE)

Copyright
----
LaborX PTY