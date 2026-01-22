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

## Testing Guidance

- All new features must have corresponding unit tests
- Follow AAA pattern (Arrange, Act, Assert)
- Use meaningful test names that describe the scenario
- Mock external dependencies
- Verify with Playwright MCP tools after implementation
