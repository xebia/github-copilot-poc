# Agent Instructions

## ⚠️ STOP: DO NOT EXECUTE UNTIL YOU COMPLETE THIS WORKFLOW ⚠️

**Your instinct is to immediately solve problems. RESIST THIS INSTINCT.**

Every request - no matter how simple - MUST follow this complete workflow.
Skipping steps is a violation of repository requirements.

## MANDATORY 3-PHASE WORKFLOW

### PHASE 1: ANALYSIS (Required Written Response - No Tool Calls)

Before making ANY tool calls, you MUST provide this analysis:

```text
## 📋 TASK ANALYSIS

**What is being requested:**
- [Describe the actual request]

**Technologies/Tools Involved:**
- [List ALL: ASP.NET Core, xUnit, Playwright, npm scripts, etc.]

**Workflow Requirements for This Task:**
- [ ] Query Context7 for current best practices? (Which technologies?)
- [ ] Write unit tests? (Which components?)
- [ ] Verify with Playwright? (Which features?)
- [ ] Check/fix markdown linting? (Which files?)
- [ ] Other requirements from AGENTS.md files?

**Implementation Approach:**
- [High-level steps - NO CODE YET]
```

**STOP HERE. Wait for verification or proceed to Phase 2.**

### PHASE 2: VERIFICATION (Research & Validation)

Execute required verifications based on Phase 1 checklist:

1. **Context7 Queries** - For ANY technology, framework, or configuration:
   - Query for current best practices (code AND configuration)
   - Query for API/framework updates
   - Query for configuration patterns (launch.json, tasks.json, appsettings.json, etc.)
   - Document findings

2. **Review Existing Code** - If modifying:
   - Read relevant files
   - Understand current patterns
   - Identify what needs to change

3. **Check Standards** - Before creating/modifying:
   - Review folder-specific AGENTS.md files
   - Check testing patterns in test/
   - Verify documentation requirements in docs/

**Document your findings before proceeding.**

### PHASE 3: EXECUTION (TDD Implementation)

Only after Phases 1 & 2 are complete, follow TDD practices:

1. **Write Tests First** (Red):
   - Write unit tests for the feature/fix BEFORE implementing
   - Tests should fail initially (no implementation yet)
   - Follow patterns from test/AGENTS.md

2. **Run Tests** - Verify they fail:
   - Run `dotnet test` to confirm tests fail as expected
   - Document the failing test output

3. **Implement** (Green):
   - Write the minimum code to make tests pass
   - Use verified patterns from Context7 queries
   - Follow folder-specific AGENTS.md guidelines

4. **Run Tests Again** - Verify they pass:
   - Run `dotnet test` to confirm tests now pass
   - All tests must be green before proceeding

5. **Refactor** (if needed):
   - Improve code quality while keeping tests green
   - Ensure tests still pass after refactoring

6. **Verify with Playwright** (if applicable):
   - Use Playwright MCP tools to test in browser
   - Verify user-facing functionality works correctly

7. **Quality Checks**:
   - Run markdown linting if markdown was changed
   - Verify code formatting and style
   - Ensure there are no compiler warnings or linter issues
   - If many warnings/issues exist, use `dotnet format` to auto-fix formatting issues

## WHY EACH PHASE MATTERS

**Phase 1 prevents:**

- Jumping to solutions without understanding requirements
- Forgetting testing/verification steps
- Missing technology-specific guidelines

**Phase 2 prevents:**

- Using outdated patterns from training data
- Violating repository standards
- Creating code that needs immediate rewrites

**Phase 3 prevents:**

- Incomplete implementations
- Untested code (TDD ensures tests exist BEFORE code)
- Unverified features
- Writing code without clear success criteria

## COMMON VIOLATIONS TO AVOID

❌ **Immediate Execution:**

```text
User: "Add an API endpoint"
Agent: [creates files immediately]
```

✅ **Correct Approach:**

```text
User: "Add an API endpoint"
Agent: "Let me analyze this first:
  - Technologies: ASP.NET Core Minimal APIs
  - Need to query Context7 for current routing patterns
  - Need to write unit tests
  - Need to verify with Playwright
  - Implementation approach: [steps]
  
  Proceeding to query Context7..."
```

❌ **Skipping Verification:**

```text
Agent: [modifies code based on "knowledge"]
```

✅ **Correct Approach:**

```text
Agent: [queries Context7, reads current code, checks AGENTS.md]
Agent: "Based on current ASP.NET Core 8 docs, here's the modern pattern..."
```

❌ **No Testing:**

```text
Agent: [implements feature, marks task complete]
```

✅ **Correct Approach (TDD):**

```text
Agent: [writes failing tests first]
Agent: "Tests written and failing as expected (Red)"
Agent: [implements feature to make tests pass]
Agent: "Tests now passing (Green)"
Agent: [verifies with Playwright]
Agent: "Feature implemented using TDD, tested, and verified in browser"
```

## REMEMBER

- **Speed is not helpfulness.** Following this workflow IS being helpful.
- **Your "knowledge" is outdated.** Always verify before implementing.
- **Every step matters.** Testing and verification are not optional.
- **Analysis comes first.** Always.

## Technology-Specific Requirements

### For ANY code changes

- Query Context7 for current best practices
- Follow TDD: Write tests first, then implement
- Follow patterns in folder-specific AGENTS.md files
- Verify with Playwright for web features (see verification requirements above)

### For ANY configuration changes

- Query Context7 for current configuration patterns
- Examples: launch.json, tasks.json, appsettings.json, package.json
- Verify configuration works after changes
- Document why configuration was changed

### For ANY markdown changes

- Run `npm run lint:md:fix` after editing
- Follow documentation standards (see docs/AGENTS.md)

### For ANY new features

- Write Tests → Implement → Verify → Document (TDD workflow)
- All four steps are mandatory

### Before ANY workaround, hack, or shortcut

- **ALWAYS** query Context7 first to verify there isn't a better, standard approach
- If something seems unusual or requires a workaround, it's likely you're missing a proper solution
- Use Context7 to check for:
  - Official patterns and best practices
  - Built-in framework features you might have overlooked
  - Modern approaches that replace older workarounds
  - Configuration options that solve the problem properly
- Only implement workarounds if Context7 confirms no standard solution exists
