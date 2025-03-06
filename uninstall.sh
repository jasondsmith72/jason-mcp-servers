#!/bin/bash

echo "MCP Servers Uninstallation"
echo "================================"

echo
echo "WARNING: This will remove all MCP servers installed by the install.sh script."
echo "The following directories will be deleted:"
echo "- mcp-servers/servers"
echo "- mcp-servers/puppeteer"
echo "- mcp-servers/memory"
echo "- mcp-servers/filesystem"
echo "- mcp-servers/github"
echo "- mcp-servers/weather"
echo "- mcp-servers/brave-search"
echo "- mcp-servers/fetch"
echo "- mcp-servers/desktop-commander"
echo

read -p "Are you sure you want to proceed? (y/N): " CONFIRM
if [[ ! $CONFIRM =~ ^[Yy]$ ]]; then
    echo
    echo "Uninstallation cancelled."
    exit 0
fi

# Check if mcp-servers directory exists
if [ ! -d "mcp-servers" ]; then
    echo
    echo "Error: mcp-servers directory not found. Nothing to uninstall."
    exit 1
fi

echo
echo "Stopping any running MCP servers..."
pkill -f "node.*mcp-servers" 2>/dev/null || true

echo
echo "Removing MCP server directories..."
cd mcp-servers

# Remove each server directory
if [ -d "servers" ]; then
    echo "Removing servers repository..."
    rm -rf servers
fi

if [ -d "puppeteer" ]; then
    echo "Removing puppeteer server..."
    rm -rf puppeteer
fi

if [ -d "memory" ]; then
    echo "Removing memory server..."
    rm -rf memory
fi

if [ -d "filesystem" ]; then
    echo "Removing filesystem server..."
    rm -rf filesystem
fi

if [ -d "github" ]; then
    echo "Removing github server..."
    rm -rf github
fi

if [ -d "weather" ]; then
    echo "Removing weather server..."
    rm -rf weather
fi

if [ -d "brave-search" ]; then
    echo "Removing brave-search server..."
    rm -rf brave-search
fi

if [ -d "fetch" ]; then
    echo "Removing fetch server..."
    rm -rf fetch
fi

if [ -d "desktop-commander" ]; then
    echo "Removing desktop-commander server..."
    rm -rf desktop-commander
fi

cd ..

# Ask if user wants to remove the entire mcp-servers directory
echo
read -p "Do you want to remove the entire mcp-servers directory? (y/N): " REMOVE_DIR
if [[ $REMOVE_DIR =~ ^[Yy]$ ]]; then
    echo "Removing mcp-servers directory..."
    rm -rf mcp-servers
    echo
    echo "All MCP servers have been completely uninstalled."
else
    echo
    echo "All MCP servers have been uninstalled, but the mcp-servers directory has been kept."
fi

echo
echo "Uninstallation complete!"

exit 0
