# Agent Instructions

## Global Guidelines

These instructions apply to all work done in this repository, regardless of the specific directory or technology.

### CRITICAL: Updating your knowledge

- **ALWAYS use Context7** to get the latest information on technologies you are using
- Query Context7 for best practices, API documentation, and current patterns
- Ensure you're using up-to-date syntax and approaches
- This is important as you're an AI model that does not have the latest information and is trained on a lot of old material

### Testing Requirements

- **ALWAYS write unit tests** for any new functionality or bug fixes
- Unit tests should be comprehensive and cover edge cases
- Follow the testing patterns established in the test/ directory

### Verification Requirements

- **ALWAYS use Playwright MCP tools** to verify that bug fixes and new features work as intended in the web application
- Perform end-to-end verification in the browser after implementing changes
- Test user interactions and visual feedback

### Markdown Quality

- **ALWAYS fix markdown linting issues** before committing changes
- Run `npm run lint:md:fix` to automatically fix markdown issues
- Or use `markdownlint-cli2 --fix "**/*.md" "#node_modules"` for CLI access
- Ensure all markdown files follow the project's markdown standards
