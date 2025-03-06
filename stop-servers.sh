#!/bin/bash

echo "Stopping MCP Servers"
echo "===================="

echo "This will stop all running MCP server processes."

# Function to stop a server
stop_server() {
    local server_name=$1
    local server_dir=$2
    echo "Stopping $server_name MCP Server..."
    
    if [ -f "mcp-servers/$server_dir/$server_dir.pid" ]; then
        PID=$(cat "mcp-servers/$server_dir/$server_dir.pid")
        if ps -p $PID > /dev/null; then
            kill $PID
            echo "$server_name server stopped."
        else
            echo "$server_name server was not running."
        fi
        rm "mcp-servers/$server_dir/$server_dir.pid"
    else
        echo "$server_name server was not started with start-servers.sh."
    fi
}

# Stop each server
stop_server "Puppeteer" "puppeteer"
stop_server "Memory" "memory"
stop_server "Filesystem" "filesystem"
stop_server "GitHub" "github"
stop_server "Weather" "weather"
stop_server "Brave Search" "brave-search"
stop_server "Fetch" "fetch"
stop_server "Desktop Commander" "desktop-commander"

echo
echo "All MCP servers have been stopped."

exit 0
