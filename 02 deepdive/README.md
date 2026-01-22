# TicTacToe Web Application

A simple TicTacToe game built with ASP.NET Core 8.0, demonstrating modern .NET
development practices, comprehensive testing, and AI-assisted development
workflows.

## Project Goal

This project serves as a learning and demonstration platform for:

- Building web applications with .NET 8 and ASP.NET Core
- Writing comprehensive unit tests with xUnit
- Following clean code principles and best practices
- Using AI assistants effectively with structured guidance (AGENTS.md files)
- Implementing end-to-end testing with Playwright

## Project Structure

```text
.
├── src/                    # Source code
│   ├── TicTacToe.Web/     # ASP.NET Core web application
│   └── AGENTS.md          # Agent instructions for source code
├── test/                  # Test projects
│   ├── TicTacToe.Tests/   # xUnit test project
│   └── AGENTS.md          # Agent instructions for testing
├── docs/                  # Functional documentation
│   └── AGENTS.md          # Agent instructions for documentation
├── .devcontainer/         # Dev container configuration
├── .vscode/              # VS Code and MCP configuration
├── TicTacToe.sln         # Visual Studio solution file (organizes src and test projects)
├── package.json          # npm dependencies (markdownlint-cli2 for markdown linting)
├── AGENTS.md             # Global agent instructions
└── README.md             # This file (getting started guide)
```

### Solution Structure

The `TicTacToe.sln` file organizes the C# projects into logical folders:

- **src/** folder contains the web application project
- **test/** folder contains the unit test project

This structure keeps the codebase organized and makes it easy to build all
projects together using `dotnet build` from the solution root.

## Prerequisites

- VS Code with Dev Containers extension
- Docker Desktop
- GitHub Copilot subscription (recommended)

## Getting Started

1. **Open in Dev Container**
   - Open this folder in VS Code
   - When prompted, click "Reopen in Container"
   - Wait for the container to build and the post-creation script to complete

2. **Build the Solution**

   ```bash
   dotnet build
   ```

3. **Run Tests**

   ```bash
   dotnet test
   ```

4. **Run the Application**

   ```bash
   cd src/TicTacToe.Web
   dotnet run
   ```

   The application will be available at the URL shown in the terminal output.

## Development Workflow

### Using AI Assistants

This project includes AGENTS.md files that provide guidance to AI coding assistants:

- **Root AGENTS.md**: Global guidelines for testing, verification, and documentation
- **src/AGENTS.md**: Patterns and practices for source code
- **test/AGENTS.md**: Testing standards and best practices
- **docs/AGENTS.md**: Documentation guidelines

When using GitHub Copilot or other AI assistants, these files help ensure consistent, high-quality code.

### Testing

All features must include unit tests. Run tests frequently during development:

```bash
# Run all tests
dotnet test

# Run tests with detailed output
dotnet test --logger "console;verbosity=detailed"

# Run tests in watch mode
dotnet watch test --project test/TicTacToe.Tests
```

## Available MCP Servers

This dev container includes Model Context Protocol (MCP) servers that enhance AI assistant capabilities.

### Context7

Provides up-to-date documentation and code examples for any programming library or framework.

**Example prompts for Copilot:**

- "How do I use ASP.NET Core middleware?"
- "Show me xUnit parameterized test examples"

### Playwright MCP

Browser automation for end-to-end testing and verification.

**Example prompts for Copilot:**

- "Open the application in browser and verify the game board displays correctly"
- "Test clicking on a TicTacToe cell and verify it marks the cell"

Use Playwright to verify bug fixes and new features work as intended in the browser.

## Project Status

🚧 **Initial Setup Complete** - Project structure is ready for implementation.

### Next Steps

- Implement game logic in [src/TicTacToe.Web](src/TicTacToe.Web)
- Add corresponding unit tests in [test/TicTacToe.Tests](test/TicTacToe.Tests)
- Create functional documentation in [docs](docs)
- Build the user interface
- Implement game state management
- Add API endpoints for game actions

## Contributing

When contributing to this project:

1. Read the relevant AGENTS.md files for the areas you're working in
2. Write unit tests for all new functionality
3. Verify changes work in the browser using Playwright
4. Update documentation as needed
5. Follow the established patterns and practices

## Technology Stack

- **.NET 8.0** - Latest LTS version of .NET
- **ASP.NET Core** - Web framework with Minimal APIs
- **C# 12** - Modern C# language features
- **xUnit** - Unit testing framework
- **Playwright** - Browser automation for E2E testing

## Resources

- [ASP.NET Core Documentation](https://docs.microsoft.com/aspnet/core)
- [xUnit Documentation](https://xunit.net/)
- [.NET 8 Documentation](https://docs.microsoft.com/dotnet)
- See [docs](docs) folder for project-specific documentation
