@echo off
echo Starting MCP Servers Installation
echo ================================

REM Check for Node.js
node --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Error: Node.js is not installed.
    echo Please install Node.js from https://nodejs.org/
    exit /b 1
)

REM Check for Git
git --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Error: Git is not installed.
    echo Please install Git from https://git-scm.com/
    exit /b 1
)

REM Create base directory
mkdir mcp-servers 2>nul
cd mcp-servers

echo.
echo Installing Puppeteer MCP Server...
git clone https://github.com/anthropics/mcp-puppeteer.git puppeteer
cd puppeteer
npm install
cd ..

echo.
echo Installing Memory MCP Server...
git clone https://github.com/anthropics/mcp-memory.git memory
cd memory
npm install
cd ..

echo.
echo Installing Filesystem MCP Server...
git clone https://github.com/anthropics/mcp-filesystem.git filesystem
cd filesystem
npm install
cd ..

echo.
echo Installing GitHub MCP Server...
git clone https://github.com/anthropics/mcp-github.git github
cd github
npm install
cd ..

echo.
echo Installing Weather MCP Server...
git clone https://github.com/anthropics/mcp-weather.git weather
cd weather
npm install
cd ..

echo.
echo Installing Brave Search MCP Server...
git clone https://github.com/anthropics/mcp-brave-search.git brave-search
cd brave-search
npm install
cd ..

echo.
echo Installing Fetch MCP Server...
git clone https://github.com/anthropics/mcp-fetch.git fetch
cd fetch
npm install
cd ..

echo.
echo Installing Desktop Commander MCP Server...
git clone https://github.com/anthropics/mcp-desktop-commander.git desktop-commander
cd desktop-commander
npm install
cd ..

echo.
echo Installation Complete!
echo To start all servers, run start-servers.bat

exit /b 0
