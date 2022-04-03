# Memcached CLI tools

## Installation

```
git clone https://github.com/eiennoyoso/memcached-cli-tools

# Copy to ~/bin
make install

# Link to ~/bin
make link
```

## Configuring memcached nodes

Nodes may be spacified as `-s|-servers` option of related commands.

Nodes may be configured by `MEMCACHED_SERVERS` environment variable so all the tools may use it without direct specifuing of addresses as command options.

## Commands

### Find keys

```
memcphfind [-s|--servers] [-k|--key-pattern] [-v|--value-pattern] [--keys-only] [-a|--active-only] [-d|--driver] [-h|--help]
```

### Read key by PHP client

```
memcphget [-s|--servers] [-k|--key] [-a|--as-is] [-d|--driver] [-h|--help]
```

### Set key by PHP client

```
memcphget [-s|--servers] [-k|--key] [-v|--value] [-h|--help] 
```

### Delete key by PHP client

```
memcphdel [-s|--servers] <-k|--key> [-h|--help]
```

### Get key by Python client

```
usage: memcmyget [-h] [--pickle] [--utf8] [--servers SERVERS] key

positional arguments:
  key                Memcached key

optional arguments:
  -h, --help         show this help message and exit
  --pickle           Unpack data by pickle
  --utf8             Unpack binary response as UTF-8
  --servers SERVERS  Server list, comma delimited. If omited, env MEMCACHED_SERVER used
```

### Set key by Python client

```
usage: memcpyset [-h] [--pickle] [--servers SERVERS] key value

positional arguments:
  key                Memcached key
  value              Memcached value

optional arguments:
  -h, --help         show this help message and exit
  --pickle           Pack data by pickle
  --servers SERVERS  Server list, comma delimited. If omited, env MEMCACHED_SERVER used
```

### Parse PHP session

```
phpsession [-m|--mode] [-h|--help]

Reads serialised session data from standart input and shows it to console

Options:
-m|-mode: Mode of unserialisation "plain" (default) or "binary"
```

Useage:

```
memcphget "ses.1234567" | phpsession -m="binary"
```

