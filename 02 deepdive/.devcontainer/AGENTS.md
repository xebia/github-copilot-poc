# C# Development Container

This devcontainer provides a lightweight C# development environment with:

## Included Tools

- **.NET 8.0 SDK** - Latest LTS version for C# development
- **PowerShell** - Cross-platform PowerShell for scripting
- **GitHub CLI** - GitHub command-line interface
- **Node.js LTS** - For Playwright and other JavaScript tools
- **Python 3.12** - For spec-kit and tooling
- **Playwright** - Browser automation for MCP tools
- **spec-kit** - GitHub's Spec-Driven Development toolkit

## VS Code Extensions

- C# Dev Kit and extensions
- GitHub Copilot and Copilot Chat

## Post-Create Script

The `postcreate.sh` script automatically:

1. Installs `uv` for Python package management
2. Installs spec-kit from the GitHub repository
3. Installs Playwright with Chromium browser
4. Verifies all installations

## Usage

After the container is built:

1. **Authenticate with GitHub:**

   ```bash
   gh auth login
   ```

2. **Initialize spec-kit (optional):**

   ```bash
   specify init --here --ai copilot
   ```

3. **Start developing!**

## Playwright MCP Tools

Playwright is installed globally and ready to use with MCP (Model Context
Protocol) tools. The Chromium browser is pre-installed with all required
dependencies.

## Customization

- To add more .NET versions, modify the `image` property in `devcontainer.json`
- To add more VS Code extensions, add them to the `extensions` array
- To install additional tools, modify `postcreate.sh`
