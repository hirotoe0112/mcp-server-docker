## Sample mcp.json
```json
{
  "mcpServers": {
    "test-server": {
      "command": "docker",
      "args": [
        "compose",
        "-f",
        "C:\\your-docker-directory\\docker-compose.yml",
        "exec",
        "-i",
        "mcp-server",
        "node",
        "build/index.js"
      ]
    }
  }
}
```