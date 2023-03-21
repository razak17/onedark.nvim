
## About

A dark neovim colorscheme inspired by the vscode theme of the same name.

## Installation

- [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  'razak17/onedark.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' }
})
```

- [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'razak17/onedark.nvim',
  lazy = false,
  priority = 1000,
  dependencies = { 'nvim-treesitter/nvim-treesitter' }
}
```

## Usage

```vim
colorscheme onedark
```

or

```lua
vim.cmd.colorscheme('onedark')
```

```lua
-- Get onedark color
local onedark =  require('onedark').onedark.yellow/teal/fg/bg
```
