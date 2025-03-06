# Puppeteer MCP Server

The Puppeteer MCP server provides web browser automation capabilities for your AI assistant.

## Features

- Navigate to URLs
- Take screenshots
- Click elements
- Fill out forms
- Execute JavaScript
- Scrape web content

## Configuration

The Puppeteer MCP server is configured in `config/puppeteer.config.json`:

```json
{
  "port": 3000,
  "host": "localhost",
  "headless": true,
  "timeout": 30000,
  "defaultViewport": {
    "width": 1280,
    "height": 800
  },
  "maxConcurrentSessions": 5
}
```

### Configuration Options

- `port`: The port on which the server listens (default: 3000)
- `host`: The host address to bind to (default: localhost)
- `headless`: Whether to run the browser in headless mode (default: true)
- `timeout`: Default timeout for operations in milliseconds (default: 30000)
- `defaultViewport`: Default viewport dimensions for the browser
- `maxConcurrentSessions`: Maximum number of concurrent browser sessions

## Environment Variables

You can override configuration options using environment variables in your `.env` file:

```
PUPPETEER_PORT=3000
PUPPETEER_HOST=localhost
PUPPETEER_HEADLESS=true
PUPPETEER_TIMEOUT=30000
PUPPETEER_VIEWPORT_WIDTH=1280
PUPPETEER_VIEWPORT_HEIGHT=800
PUPPETEER_MAX_SESSIONS=5
```

## Usage

The Puppeteer MCP server exposes several functions to the AI assistant:

- `puppeteer_navigate`: Navigate to a URL
- `puppeteer_screenshot`: Take a screenshot of the current page or a specific element
- `puppeteer_click`: Click an element on the page
- `puppeteer_fill`: Fill out an input field
- `puppeteer_select`: Select an option from a dropdown
- `puppeteer_hover`: Hover over an element
- `puppeteer_evaluate`: Execute JavaScript in the browser context

## Examples

### Navigate to a URL

```javascript
{
  "function": "puppeteer_navigate",
  "parameters": {
    "url": "https://example.com"
  }
}
```

### Take a Screenshot

```javascript
{
  "function": "puppeteer_screenshot",
  "parameters": {
    "name": "example-screenshot",
    "selector": "#main-content",
    "width": 1200,
    "height": 800
  }
}
```

### Fill a Form

```javascript
{
  "function": "puppeteer_fill",
  "parameters": {
    "selector": "#search-input",
    "value": "search query"
  }
}
```

## Installation

The Puppeteer MCP server is installed automatically when running the `install.bat` or `install.sh` script.

## Troubleshooting

If you encounter issues with the Puppeteer MCP server:

1. Check that the server is running using `ps aux | grep puppeteer` (Linux/Mac) or Task Manager (Windows)
2. Verify that the port is available and not in use by another application
3. Check the server logs in `logs/puppeteer.log`
4. Ensure Chrome or Chromium is installed on the system
