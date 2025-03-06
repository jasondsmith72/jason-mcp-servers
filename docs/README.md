# MCP Servers Documentation

This directory contains documentation for all MCP servers in this repository.

## Server List

1. [Puppeteer MCP Server](puppeteer.md)
2. [Memory MCP Server](memory.md)
3. [Filesystem MCP Server](filesystem.md)
4. [GitHub MCP Server](github.md)
5. [Weather MCP Server](weather.md)
6. [Brave Search MCP Server](brave-search.md)
7. [Fetch MCP Server](fetch.md)
8. [Desktop Commander MCP Server](desktop-commander.md)

## General Setup

1. Clone this repository:
   ```
   git clone https://github.com/jasondsmith72/jason-mcp-servers.git
   cd jason-mcp-servers
   ```

2. Run the installation script:
   - For Windows: `install.bat`
   - For Linux/Mac: `./install.sh`

3. Copy `.env.template` to `.env` and configure your API keys:
   ```
   cp .env.template .env
   ```

4. Start the servers:
   - For Windows: `start-servers.bat`
   - For Linux/Mac: `./start-servers.sh`

## Configuration

Each MCP server has its own configuration file in the `config` directory. Modify these files to customize server behavior.

## Troubleshooting

If you encounter issues:

1. Check the server logs in the `logs` directory.
2. Ensure all API keys are correctly set in your `.env` file.
3. Verify the ports specified in the config files are available.
