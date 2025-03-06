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
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout puppeteer
npm install
cd ..
mkdir puppeteer
xcopy /E /I /Y modelcontextprotocol\* puppeteer\
rmdir /S /Q modelcontextprotocol

echo.
echo Installing Memory MCP Server...
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout memory
npm install
cd ..
mkdir memory
xcopy /E /I /Y modelcontextprotocol\* memory\
rmdir /S /Q modelcontextprotocol

echo.
echo Installing Filesystem MCP Server...
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout filesystem
npm install
cd ..
mkdir filesystem
xcopy /E /I /Y modelcontextprotocol\* filesystem\
rmdir /S /Q modelcontextprotocol

echo.
echo Installing GitHub MCP Server...
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout github
npm install
cd ..
mkdir github
xcopy /E /I /Y modelcontextprotocol\* github\
rmdir /S /Q modelcontextprotocol

echo.
echo Installing Weather MCP Server...
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout weather
npm install
cd ..
mkdir weather
xcopy /E /I /Y modelcontextprotocol\* weather\
rmdir /S /Q modelcontextprotocol

echo.
echo Installing Brave Search MCP Server...
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout brave-search
npm install
cd ..
mkdir brave-search
xcopy /E /I /Y modelcontextprotocol\* brave-search\
rmdir /S /Q modelcontextprotocol

echo.
echo Installing Fetch MCP Server...
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout fetch
npm install
cd ..
mkdir fetch
xcopy /E /I /Y modelcontextprotocol\* fetch\
rmdir /S /Q modelcontextprotocol

echo.
echo Installing Desktop Commander MCP Server...
git clone https://github.com/modelcontextprotocol/servers.git modelcontextprotocol
cd modelcontextprotocol
git checkout desktop-commander
npm install
cd ..
mkdir desktop-commander
xcopy /E /I /Y modelcontextprotocol\* desktop-commander\
rmdir /S /Q modelcontextprotocol

echo.
echo Installation Complete!
echo To start all servers, run start-servers.bat

exit /b 0
