# GitHub Copilot Hands-on Labs (VS Code + GitHub Web)

This folder contains a step-by-step, workshop-friendly set of labs for learning GitHub Copilot using the Wright Brothers API sample in `code/`.

## Suggested flow
1. Start with enablement and “where to find Copilot”
2. Do repo understanding with `@workspace`
3. Implement a tiny API feature with completions
4. Add tests with Inline Chat
5. Debug with Copilot + `dotnet test`
6. Cover practical governance (licenses/IP), context, prompt craft
7. End with GitHub Web + Mermaid + responsible use

## Filename note (Windows)
Some lab filenames use `-` instead of `:` because `:` is not allowed in Windows filenames.

## Running the sample
From the repository root:

```sh
cd code
dotnet run --project WrightBrothersApi/WrightBrothersApi.csproj
dotnet test
```

For more detail, see `code/README.md`.
