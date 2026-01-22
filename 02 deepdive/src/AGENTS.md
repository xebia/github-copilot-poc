# Source Code Agent Instructions

## Technologies Used

- **ASP.NET Core 8.0** - Web application framework
- **C# 12** - Programming language
- **Minimal APIs** - Lightweight API endpoints

## Patterns and Practices

### Code Organization

- Follow clean architecture principles
- Separate concerns: presentation, business logic, and data access
- Use dependency injection for loose coupling
- Keep controllers/endpoints thin, move logic to services

### ASP.NET Core Best Practices

- Use Minimal APIs for simple endpoints
- Implement proper error handling and logging
- Follow RESTful conventions for API design
- Use built-in dependency injection container
- Implement proper async/await patterns

### Code Quality

- Write clean, self-documenting code
- Use meaningful variable and method names
- Keep methods small and focused (Single Responsibility Principle)
- Add XML documentation comments for public APIs
- Follow C# naming conventions (PascalCase for classes/methods, camelCase for parameters/local variables)

### Security

- Validate all user inputs
- Use proper CORS configuration
- Implement appropriate authentication/authorization when needed
- Never expose sensitive information in responses

### Error Handling

- Use `Results` helpers for API responses (`Results.Ok()`, `Results.NotFound()`, etc.)
- Implement global exception handling middleware for production
- Log errors with appropriate context
- Return user-friendly error messages (don't expose stack traces)

### Performance

- Use async/await for I/O operations
- Avoid blocking calls in async methods
- Consider caching for expensive operations
- Use appropriate HTTP status codes and response types

## Verification Requirements

Before marking any feature complete:

1. **Unit Tests** - All new code must have corresponding tests in [test/TicTacToe.Tests](../../test/TicTacToe.Tests)
2. **Build Verification** - Run `dotnet build` to ensure no compilation errors
3. **Test Execution** - Run `dotnet test` to verify all tests pass
4. **Browser Testing** - Use Playwright MCP to verify functionality works in the browser
5. **Code Quality** - Ensure code follows patterns and practices outlined in this file
