#!/bin/bash

echo "Starting MCP Servers"
echo "===================="

# Function to start a server
start_server() {
    local server_name=$1
    local server_dir=$2
    echo "Starting $server_name MCP Server..."
    cd mcp-servers/$server_dir
    nohup npm start > $server_dir.log 2>&1 &
    echo "$!" > $server_dir.pid
    cd ../..
}

# Create logs directory if it doesn't exist
mkdir -p logs

# Start each server in background
start_server "Puppeteer" "puppeteer"
start_server "Memory" "memory"
start_server "Filesystem" "filesystem"
start_server "GitHub" "github"
start_server "Weather" "weather"
start_server "Brave Search" "brave-search"
start_server "Fetch" "fetch"
start_server "Desktop Commander" "desktop-commander"

echo
echo "All MCP servers have been started."
echo "Check individual log files in mcp-servers directory for server status."
echo
echo "To stop all servers, run ./stop-servers.sh"

exit 0
