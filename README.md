# Neovim Dotfiles

My personal Neovim configuration with LSP, Treesitter, and modern formatting support.

## Features

- 🎨 LSP support with Mason
- 🌳 Treesitter syntax highlighting
- 📝 Auto-formatting with Prettier (via conform.nvim)
- 🔍 Fuzzy finding with Telescope and fzf
- 📁 File explorer with Neo-tree
- 🎯 Auto-completion with nvim-cmp
- 🎨 OneDark theme
- ✨ Git integration with GitSigns

## Prerequisites

### macOS

```bash
# Install Homebrew (if not installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install dependencies
brew install neovim node ripgrep fd
```

### Ubuntu/Debian

```bash
# Update system
sudo apt update

# Install Neovim 0.11+ (via PPA)
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim

# Install Node.js and npm
sudo apt install nodejs npm

# Install ripgrep and fd (for Telescope)
sudo apt install ripgrep fd-find
```

### Arch Linux

```bash
sudo pacman -S neovim nodejs npm ripgrep fd
```

## Installation

### 1. Backup existing config (if any)

```bash
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
```

### 2. Clone this repository

```bash
git clone https://github.com/knmarcin/neovim-dotfiles.git ~/.config/nvim
```

### 3. Install Prettier globally

```bash
npm install -g prettier
```

**Note:** If you get permission errors on Linux, use:
```bash
sudo npm install -g prettier
```

Or set up npm to not require sudo:
```bash
mkdir -p ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.zshrc
source ~/.zshrc
npm install -g prettier
```

### 4. Install Packer (plugin manager)

**macOS/Linux:**
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### 5. Install plugins

Open Neovim:
```bash
nvim
```

Inside Neovim, run:
```vim
:PackerSync
```

Wait for all plugins to install, then restart Neovim.

### 6. Install LSP servers (optional but recommended)

Open any file in Neovim and run:
```vim
:Mason
```

Install the language servers you need (e.g., `tsserver` for TypeScript, `lua_ls` for Lua, etc.)

## Usage

### Key Features

#### Formatting
- **Visual mode + `=`**: Format selected code with Prettier (for JS/TS/JSX/TSX files)
- Works automatically for JavaScript, TypeScript, React files, JSON, CSS, and HTML

#### File Navigation
- Check `lua/maps.lua` for custom keybindings
- Telescope and fzf for fuzzy finding
- Neo-tree for file exploration

#### LSP
- Auto-completion as you type
- Go to definition, hover documentation, and more
- Configured via Mason

## Troubleshooting

### "Packer is not installed" error
Re-run the Packer installation command from step 4.

### Formatting doesn't work
1. Verify Prettier is installed: `prettier --version`
2. Restart Neovim
3. Check if the file type is supported (JS/TS/JSX/TSX/JSON/CSS/HTML)

### LSP not working
1. Open Neovim
2. Run `:Mason`
3. Install the language server for your file type
4. Restart Neovim

### Neovim version issues
Ensure you have Neovim 0.11 or newer:
```bash
nvim --version
```

If older, follow the installation steps above to update.

## File Structure

```
~/.config/nvim/
├── init.lua              # Main configuration entry point
├── lua/
│   ├── base.lua          # Basic Vim settings
│   ├── highlights.lua    # Syntax highlighting
│   ├── maps.lua          # Key mappings
│   ├── plugins.lua       # Plugin definitions (Packer)
│   └── conform-config.lua # Formatter configuration
├── after/                # After plugins config
└── plugin/               # Plugin-specific configs
```

## Customization

- **Change theme**: Edit `lua/plugins.lua` and modify the `onedark.nvim` plugin
- **Add keybindings**: Edit `lua/maps.lua`
- **Add plugins**: Edit `lua/plugins.lua` and run `:PackerSync`
- **Configure formatters**: Edit `lua/conform-config.lua`

## Credits

Configuration based on personal workflow with inspirations from the Neovim community.

## License

MIT
