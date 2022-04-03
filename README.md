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

### Delet key by PHP client

```
memcphdel [-s|--servers] <-k|--key> [-h|--help]
```

