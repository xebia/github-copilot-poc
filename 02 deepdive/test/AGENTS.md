# Test Project Agent Instructions

## Technologies Used

- **xUnit** - Testing framework
- **Moq** - Mocking library (when needed)
- **FluentAssertions** - Assertion library (optional, for more readable assertions)
- **.NET 8.0** - Target framework

## General Code Guidelines

Test code is source code. Follow the code quality and best practices outlined in [../src/AGENTS.md](../src/AGENTS.md), including:

- Clean, self-documenting code
- Meaningful naming conventions
- Proper async/await patterns
- C# naming conventions

## Testing Patterns and Practices

### Test Organization

- One test class per production class
- Group related tests using nested classes or theory data
- Use descriptive test method names following the pattern: `MethodName_Scenario_ExpectedBehavior`
- Organize tests following the AAA pattern: Arrange, Act, Assert

### xUnit Best Practices

- Use `[Fact]` for tests without parameters
- Use `[Theory]` with `[InlineData]` for parameterized tests
- Use `[MemberData]` or `[ClassData]` for complex test data
- Leverage constructor for test setup and IDisposable for cleanup
- Use class fixtures for expensive setup shared across tests

### Test Quality

- Each test should verify one specific behavior
- Tests should be independent and not rely on execution order
- Use meaningful assertion messages
- Avoid logic in tests (no if statements, loops, etc.)
- Mock external dependencies to isolate units under test

### Code Coverage

- Aim for high code coverage, but focus on meaningful tests
- Test edge cases and error conditions
- Don't just test happy paths
- Ensure all public methods have corresponding tests

### Test Data

- Use realistic test data that represents production scenarios
- Keep test data minimal but sufficient
- Use builders or object mothers for complex object creation
- Avoid magic numbers and strings - use constants

## Verification

- All tests must pass before considering work complete
- Run entire test suite to ensure no regressions
- Use Playwright MCP tools to verify end-to-end scenarios
