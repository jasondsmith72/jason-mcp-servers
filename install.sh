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

echo
echo "Installing Puppeteer MCP Server..."
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout puppeteer
npm install
cd ..
mkdir -p puppeteer
cp -R modelcontextprotocol/* puppeteer/
rm -rf modelcontextprotocol

echo
echo "Installing Memory MCP Server..."
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout memory
npm install
cd ..
mkdir -p memory
cp -R modelcontextprotocol/* memory/
rm -rf modelcontextprotocol

echo
echo "Installing Filesystem MCP Server..."
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout filesystem
npm install
cd ..
mkdir -p filesystem
cp -R modelcontextprotocol/* filesystem/
rm -rf modelcontextprotocol

echo
echo "Installing GitHub MCP Server..."
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout github
npm install
cd ..
mkdir -p github
cp -R modelcontextprotocol/* github/
rm -rf modelcontextprotocol

echo
echo "Installing Weather MCP Server..."
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout weather
npm install
cd ..
mkdir -p weather
cp -R modelcontextprotocol/* weather/
rm -rf modelcontextprotocol

echo
echo "Installing Brave Search MCP Server..."
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout brave-search
npm install
cd ..
mkdir -p brave-search
cp -R modelcontextprotocol/* brave-search/
rm -rf modelcontextprotocol

echo
echo "Installing Fetch MCP Server..."
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout fetch
npm install
cd ..
mkdir -p fetch
cp -R modelcontextprotocol/* fetch/
rm -rf modelcontextprotocol

echo
echo "Installing Desktop Commander MCP Server..."
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout desktop-commander
npm install
cd ..
mkdir -p desktop-commander
cp -R modelcontextprotocol/* desktop-commander/
rm -rf modelcontextprotocol

echo
echo "Making start script executable..."
chmod +x ../start-servers.sh

echo
echo "Installation Complete!"
echo "To start all servers, run ./start-servers.sh"

exit 0
