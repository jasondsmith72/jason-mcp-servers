#!/bin/bash

echo "Starting MCP Servers Installation"
echo "================================"

# Check for Node.js
if ! command -v node &> /dev/null; then
    echo "Error: Node.js is not installed."
    echo "Please install Node.js from https://nodejs.org/"
    exit 1
fi

# Check for Git
if ! command -v git &> /dev/null; then
    echo "Error: Git is not installed."
    echo "Please install Git from https://git-scm.com/"
    exit 1
fi

# Create base directory
mkdir -p mcp-servers
cd mcp-servers

# Clone the main MCP servers repository
echo
echo "Cloning the Model Context Protocol servers repository..."
git clone https://github.com/modelcontextprotocol/servers.git
cd servers
npm install
cd ..

echo
echo "Setting up individual MCP servers..."

# Set up Puppeteer MCP Server
echo
echo "Setting up Puppeteer MCP Server..."
mkdir -p puppeteer/src
cp -R servers/src/puppeteer puppeteer/src/
cp servers/package.json puppeteer/
cd puppeteer
npm install
cd ..

# Set up Memory MCP Server
echo
echo "Setting up Memory MCP Server..."
mkdir -p memory/src
cp -R servers/src/memory memory/src/
cp servers/package.json memory/
cd memory
npm install
cd ..

# Set up Filesystem MCP Server
echo
echo "Setting up Filesystem MCP Server..."
mkdir -p filesystem/src
cp -R servers/src/filesystem filesystem/src/
cp servers/package.json filesystem/
cd filesystem
npm install
cd ..

# Set up GitHub MCP Server
echo
echo "Setting up GitHub MCP Server..."
mkdir -p github/src
cp -R servers/src/github github/src/
cp servers/package.json github/
cd github
npm install
cd ..

# Set up Weather MCP Server
echo
echo "Setting up Weather MCP Server..."
mkdir -p weather/src
cp -R servers/src/weather weather/src/
cp servers/package.json weather/
cd weather
npm install
cd ..

# Set up Brave Search MCP Server
echo
echo "Setting up Brave Search MCP Server..."
mkdir -p "brave-search/src"
cp -R servers/src/brave-search "brave-search/src/"
cp servers/package.json "brave-search/"
cd "brave-search"
npm install
cd ..

# Set up Fetch MCP Server
echo
echo "Setting up Fetch MCP Server..."
mkdir -p fetch/src
cp -R servers/src/fetch fetch/src/
cp servers/package.json fetch/
cd fetch
npm install
cd ..

# Set up Desktop Commander MCP Server
echo
echo "Setting up Desktop Commander MCP Server..."
mkdir -p "desktop-commander/src"
cp -R servers/src/desktop-commander "desktop-commander/src/"
cp servers/package.json "desktop-commander/"
cd "desktop-commander"
npm install
cd ..

echo
echo "Making start script executable..."
chmod +x ../start-servers.sh

echo
echo "Installation Complete!"
echo "To start all servers, run ./start-servers.sh"

exit 0
