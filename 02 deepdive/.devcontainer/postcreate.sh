#!/bin/bash
set -e

echo "🚀 Starting post-create setup..."

# Install uv for Python package management
echo "📦 Installing uv..."
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.cargo/bin:$PATH"

# Install spec-kit
echo "🌱 Installing spec-kit..."
uv tool install specify-cli --from git+https://github.com/github/spec-kit.git

# Install Playwright dependencies for MCP tools
echo "🎭 Installing Playwright..."
npm install -g playwright
npx playwright install chromium chrome --with-deps

# ==================== npm Dependencies ====================
echo "📦 Installing npm dependencies..."
npm install

# Install markdownlint-cli2 globally for CLI access
echo "📝 Installing markdownlint-cli2 globally..."
npm install -g markdownlint-cli2 || echo "⚠️  Warning: Failed to install markdownlint-cli2 globally, using local version from package.json"

# ==================== .NET Dev Certificates ====================
echo "🔐 Setting up .NET HTTPS development certificate..."
# Clean old certificates (ignore errors if none exist)
sudo -E dotnet dev-certs https --clean > /dev/null 2>&1 || true
dotnet dev-certs https --clean > /dev/null 2>&1 || true
# Generate new certificate
dotnet dev-certs https
# Trust it on Linux by installing to system certificates
sudo mkdir -p /usr/local/share/ca-certificates/aspnet
sudo -E dotnet dev-certs https -ep /usr/local/share/ca-certificates/aspnet/https.crt --format PEM
sudo update-ca-certificates
echo "✅ HTTPS certificate generated and trusted"

# Verify installations
echo ""
echo "✅ Verifying installations..."
echo "PowerShell: $(pwsh --version)"
echo "GitHub CLI: $(gh --version | head -n 1)"
echo "Node.js: $(node --version)"
echo "Python: $(python3 --version)"
echo "uv: $(uv --version)"
echo "Playwright: $(npx playwright --version)"
echo "spec-kit: $(specify --help | head -n 1 || echo 'specify command installed')"

# Configure GitHub CLI to use HTTPS instead of SSH by default
gh config set git_protocol https

# Configure PowerShell profile with PATH settings
echo "🔧 Configuring PowerShell profile..."
PWSH_PROFILE="$HOME/.config/powershell/Microsoft.PowerShell_profile.ps1"
mkdir -p "$(dirname "$PWSH_PROFILE")"

# Get the actual npm global bin path
NPM_PREFIX=$(npm prefix -g 2>/dev/null || echo "/usr/local")
NPM_BIN="$NPM_PREFIX/bin"

cat > "$PWSH_PROFILE" << EOF
# GitHub Copilot POC Development Environment Profile

# ==================== PATH Configuration ====================
# Add uv and spec-kit tools
\$env:PATH = "\$HOME/.local/bin:\$env:PATH"

# Add .NET global tools
\$env:PATH = "\$HOME/.dotnet/tools:\$env:PATH"

# Add npm global packages
\$env:PATH = "$NPM_BIN:\$env:PATH"
EOF

echo ""
echo "🎉 Post-create setup complete!"
echo ""
echo "📝 Next steps:"
echo "  1. Authenticate with GitHub CLI: gh auth login"
echo "  2. Initialize a spec-kit project: specify init --here --ai copilot"
echo "  3. Start building with Spec-Driven Development!"
