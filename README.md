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
8. **desktopCommander** - Desktop command execution (from [wonderwhy-er/ClaudeComputerCommander](https://github.com/wonderwhy-er/ClaudeComputerCommander))

## Installation

The `install.sh` (for Linux/Mac) and `install.bat` (for Windows) scripts will help you set up all the MCP servers in this repository. These scripts fetch servers from:

- The official Model Context Protocol organization repository at [https://github.com/modelcontextprotocol/servers](https://github.com/modelcontextprotocol/servers) for most servers
- The ClaudeComputerCommander repository at [https://github.com/wonderwhy-er/ClaudeComputerCommander](https://github.com/wonderwhy-er/ClaudeComputerCommander) for the desktop-commander server

The installation scripts will:
1. Clone the main repository
2. Set up each server in its own directory with the necessary dependencies
3. Install all required npm packages

## Uninstallation

If you need to remove the MCP servers, you can use the provided uninstallation scripts:

- For Windows: Run `uninstall.bat`
- For Linux/Mac: Run `uninstall.sh`

These scripts will:
1. Warn you about what will be removed
2. Ask for confirmation before proceeding
3. Stop any running MCP server processes
4. Remove all MCP server directories
5. Optionally remove the entire mcp-servers directory

## Server Structure

The Model Context Protocol servers repository has all servers in a single repository under the `src` directory. Our installation scripts:

1. Clone the entire repository
2. Create separate directories for each server
3. Copy the appropriate server code to each directory
4. Set up dependencies for each server
5. For the desktop-commander server, we get it from a separate repository

## Requirements

- **Node.js** (v16 or higher) - [https://nodejs.org/](https://nodejs.org/)
- **Git** - [https://git-scm.com/](https://git-scm.com/)
- **Python** (3.8+ for some servers) - [https://www.python.org/downloads/](https://www.python.org/downloads/)
- **Docker** (optional, for containerized deployment) - [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/)

## API Requirements

Some MCP servers require API keys to function properly:

- **GitHub API** - [https://github.com/settings/tokens](https://github.com/settings/tokens)
- **Weather API** - [https://openweathermap.org/api](https://openweathermap.org/api) or similar service
- **Brave Search API** - [https://brave.com/search/api/](https://brave.com/search/api/)

## Configuration

See the individual server directories for specific configuration options. The `config` directory contains default configurations for all servers that you can customize according to your needs.

## Environment Variables

Copy the `.env.template` file to `.env` and fill in your API keys and other required credentials before starting the servers.

## License

MIT License
