@echo off
echo MCP Servers Uninstallation
echo ================================

echo.
echo WARNING: This will remove all MCP servers installed by the install.bat script.
echo The following directories will be deleted:
echo - mcp-servers\servers
echo - mcp-servers\puppeteer
echo - mcp-servers\memory
echo - mcp-servers\filesystem
echo - mcp-servers\github
echo - mcp-servers\weather
echo - mcp-servers\brave-search
echo - mcp-servers\fetch
echo - mcp-servers\desktop-commander
echo.

set /p CONFIRM=Are you sure you want to proceed? (y/N): 
if /i not "%CONFIRM%"=="y" (
    echo.
    echo Uninstallation cancelled.
    exit /b 0
)

REM Check if mcp-servers directory exists
if not exist mcp-servers (
    echo.
    echo Error: mcp-servers directory not found. Nothing to uninstall.
    exit /b 1
)

echo.
echo Stopping any running MCP servers...
taskkill /F /FI "WINDOWTITLE eq *MCP*" /T >nul 2>&1

echo.
echo Removing MCP server directories...
cd mcp-servers

REM Remove each server directory
if exist servers (
    echo Removing servers repository...
    rmdir /S /Q servers
)

if exist puppeteer (
    echo Removing puppeteer server...
    rmdir /S /Q puppeteer
)

if exist memory (
    echo Removing memory server...
    rmdir /S /Q memory
)

if exist filesystem (
    echo Removing filesystem server...
    rmdir /S /Q filesystem
)

if exist github (
    echo Removing github server...
    rmdir /S /Q github
)

if exist weather (
    echo Removing weather server...
    rmdir /S /Q weather
)

if exist brave-search (
    echo Removing brave-search server...
    rmdir /S /Q brave-search
)

if exist fetch (
    echo Removing fetch server...
    rmdir /S /Q fetch
)

if exist desktop-commander (
    echo Removing desktop-commander server...
    rmdir /S /Q desktop-commander
)

cd ..

REM Ask if user wants to remove the entire mcp-servers directory
echo.
set /p REMOVE_DIR=Do you want to remove the entire mcp-servers directory? (y/N): 
if /i "%REMOVE_DIR%"=="y" (
    echo Removing mcp-servers directory...
    rmdir /S /Q mcp-servers
    echo.
    echo All MCP servers have been completely uninstalled.
) else (
    echo.
    echo All MCP servers have been uninstalled, but the mcp-servers directory has been kept.
)

echo.
echo Uninstallation complete!

exit /b 0
