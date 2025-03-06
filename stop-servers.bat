@echo off
echo Stopping MCP Servers
echo ===================

echo This will stop all running MCP server processes.
echo If you have other Node.js applications running, they will not be affected.

taskkill /fi "WINDOWTITLE eq Puppeteer MCP*" /f
taskkill /fi "WINDOWTITLE eq Memory MCP*" /f
taskkill /fi "WINDOWTITLE eq Filesystem MCP*" /f
taskkill /fi "WINDOWTITLE eq GitHub MCP*" /f
taskkill /fi "WINDOWTITLE eq Weather MCP*" /f
taskkill /fi "WINDOWTITLE eq Brave Search MCP*" /f
taskkill /fi "WINDOWTITLE eq Fetch MCP*" /f
taskkill /fi "WINDOWTITLE eq Desktop Commander MCP*" /f

echo.
echo All MCP servers have been stopped.

exit /b 0
