@echo off
echo Starting MCP Servers
echo ====================

REM Start each server in a separate window
echo Starting Puppeteer MCP Server...
start "Puppeteer MCP" cmd /c "cd mcp-servers\puppeteer && npm start"

echo Starting Memory MCP Server...
start "Memory MCP" cmd /c "cd mcp-servers\memory && npm start"

echo Starting Filesystem MCP Server...
start "Filesystem MCP" cmd /c "cd mcp-servers\filesystem && npm start"

echo Starting GitHub MCP Server...
start "GitHub MCP" cmd /c "cd mcp-servers\github && npm start"

echo Starting Weather MCP Server...
start "Weather MCP" cmd /c "cd mcp-servers\weather && npm start"

echo Starting Brave Search MCP Server...
start "Brave Search MCP" cmd /c "cd mcp-servers\brave-search && npm start"

echo Starting Fetch MCP Server...
start "Fetch MCP" cmd /c "cd mcp-servers\fetch && npm start"

echo Starting Desktop Commander MCP Server...
start "Desktop Commander MCP" cmd /c "cd mcp-servers\desktop-commander && npm start"

echo.
echo All MCP servers have been started.
echo Check individual terminal windows for server status.
echo.
echo To stop all servers, close all terminal windows or run stop-servers.bat

exit /b 0
