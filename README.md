
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
## Screenshots

![2023-11-06_234230_584238053](https://github.com/razak17/nvim/assets/52210954/403209bd-ecd9-4a95-8b4e-e05a3adda427)

![2023-11-06_233102_644733208](https://github.com/razak17/onedark.nvim/assets/52210954/08f089cd-a7eb-45fb-987e-a6276b1749f1)

![2023-11-06_233148_164870900](https://github.com/razak17/onedark.nvim/assets/52210954/f6624aab-e7a6-4abe-8a8f-a45307d0d28c)

![2023-11-06_233410_985401918](https://github.com/razak17/onedark.nvim/assets/52210954/5c7247e2-14a2-4110-a03d-b101927ba7f7)

![2023-11-06_231510_327531471](https://github.com/razak17/onedark.nvim/assets/52210954/ab415fc0-6300-4fe6-98ce-4b1f7808f102)

![2023-11-06_231524_073773457](https://github.com/razak17/onedark.nvim/assets/52210954/3b16123a-97b4-47b9-8f9e-e380bb7fc9b3)

![2023-11-06_234236_889471448](https://github.com/razak17/nvim/assets/52210954/b46611e9-f4fb-4673-aa9e-502808ea7009)
