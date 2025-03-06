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

REM Clone the main MCP servers repository
echo.
echo Cloning the Model Context Protocol servers repository...
git clone https://github.com/modelcontextprotocol/servers.git
cd servers
npm install
cd ..

echo.
echo Setting up individual MCP servers...

REM Set up Puppeteer MCP Server
echo.
echo Setting up Puppeteer MCP Server...
mkdir puppeteer 2>nul
xcopy /E /I /Y servers\src\puppeteer puppeteer\src\puppeteer\
copy servers\package.json puppeteer\package.json
cd puppeteer
npm install
cd ..

REM Set up Memory MCP Server
echo.
echo Setting up Memory MCP Server...
mkdir memory 2>nul
xcopy /E /I /Y servers\src\memory memory\src\memory\
copy servers\package.json memory\package.json
cd memory
npm install
cd ..

REM Set up Filesystem MCP Server
echo.
echo Setting up Filesystem MCP Server...
mkdir filesystem 2>nul
xcopy /E /I /Y servers\src\filesystem filesystem\src\filesystem\
copy servers\package.json filesystem\package.json
cd filesystem
npm install
cd ..

REM Set up GitHub MCP Server
echo.
echo Setting up GitHub MCP Server...
mkdir github 2>nul
xcopy /E /I /Y servers\src\github github\src\github\
copy servers\package.json github\package.json
cd github
npm install
cd ..

REM Set up Weather MCP Server
echo.
echo Setting up Weather MCP Server...
mkdir weather 2>nul
xcopy /E /I /Y servers\src\weather weather\src\weather\
copy servers\package.json weather\package.json
cd weather
npm install
cd ..

REM Set up Brave Search MCP Server
echo.
echo Setting up Brave Search MCP Server...
mkdir brave-search 2>nul
xcopy /E /I /Y servers\src\brave-search brave-search\src\brave-search\
copy servers\package.json brave-search\package.json
cd brave-search
npm install
cd ..

REM Set up Fetch MCP Server
echo.
echo Setting up Fetch MCP Server...
mkdir fetch 2>nul
xcopy /E /I /Y servers\src\fetch fetch\src\fetch\
copy servers\package.json fetch\package.json
cd fetch
npm install
cd ..

REM Set up Desktop Commander MCP Server from separate repository
echo.
echo Setting up Desktop Commander MCP Server...
mkdir desktop-commander 2>nul
git clone https://github.com/wonderwhy-er/ClaudeComputerCommander.git desktop-commander-temp
xcopy /E /I /Y desktop-commander-temp\* desktop-commander\
rmdir /S /Q desktop-commander-temp
cd desktop-commander
npm install
cd ..

echo.
echo Installation Complete!
echo To start all servers, run start-servers.bat

exit /b 0
