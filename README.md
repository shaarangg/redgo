# RedGo

A lightweight Redis server implementation in Go, supporting basic Redis commands and persistence through AOF (Append-Only File).

## Features

-   Basic Redis commands support (PING, GET, SET, HGET, HSET)
-   RESP (Redis Serialization Protocol) implementation
-   Concurrent client handling
-   Persistence through AOF (Append-Only File)
-   Thread-safe operations with mutex locks
-   Automatic AOF syncing every second

## Installation

Ensure you have Go 1.22.1 or later installed on your system.

### Clone the repository

```bash
git clone https://github.com/shaarangg/redgo.git
```

### Change into the project directory

```bash
cd redgo
```

### Build the project

```bash
make build
```

### Run the server

```bash
make run
```

## Usage

The server listens on port 6379 (default Redis port). You can connect to it using the standard Redis CLI:

```bash
redis-cli
```

### Supported Commands

1. **PING**

    - Returns PONG
    - Usage: `PING [message]`

2. **SET**

    - Sets a key to hold a string value
    - Usage: `SET key value`

3. **GET**

    - Gets the value of a key
    - Usage: `GET key`

4. **HSET**

    - Sets field in the hash stored at key to value
    - Usage: `HSET hash field value`

5. **HGET**
    - Returns the value associated with field in the hash stored at key
    - Usage: `HGET hash field`

## Architecture

### Components

1. **RESP Protocol (resp.go)**

    - Implements Redis Serialization Protocol
    - Handles marshaling and unmarshaling of Redis data types

2. **Command Handlers (handler.go)**

    - Implements Redis command logic
    - Thread-safe operations using mutex locks

3. **AOF Persistence (aof.go)**

    - Implements Append-Only File persistence
    - Automatic syncing to disk
    - Command replay on server startup

4. **Server (main.go)**
    - TCP server implementation
    - Concurrent client handling
    - Command routing

## Development

### Project Structure

```
redgo/
├── main.go # Server implementation
├── resp.go # RESP protocol implementation
├── handler.go # Command handlers
├── aof.go # AOF persistence
├── go.mod # Go module file
└── Makefile # Build automation
```

### Building

### Build the binary

```bash
make build
```

### Clean build artifacts

```bash
make clean
```

### Build and run

```bash
make run
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

-   Inspired by Redis
-   Built with Go's standard library
