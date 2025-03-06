# Jason's MCP Servers

This repository contains setup and configuration files for various Model Context Protocol (MCP) servers used in my environment.

## Included MCP Servers

1. **puppeteer** - Web browser automation and scraping
2. **memory** - Knowledge graph and memory management
3. **filesystem** - File system operations and management
4. **github** - GitHub API integration
5. **weather** - Weather information service
6. **brave_search** - Brave search API integration
7. **fetch** - URL fetching and web content retrieval
8. **desktopCommander** - Desktop command execution

## Installation

The `install.sh` (for Linux/Mac) and `install.bat` (for Windows) scripts will help you set up all the MCP servers in this repository. These scripts now fetch servers from the official Model Context Protocol organization repository at [https://github.com/modelcontextprotocol/servers](https://github.com/modelcontextprotocol/servers).

The installation scripts will:
1. Clone the main repository
2. Checkout the appropriate branch for each server
3. Install dependencies
4. Set up each server in its own directory

## Requirements

- Node.js (v16 or higher)
- Git
- Python 3.8+ (for some servers)
- Docker (optional, for containerized deployment)

## Configuration

See the individual server directories for specific configuration options. The `config` directory contains default configurations for all servers that you can customize according to your needs.

## Environment Variables

Copy the `.env.template` file to `.env` and fill in your API keys and other required credentials before starting the servers.

## License

MIT License
