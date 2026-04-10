vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "

require("config.lazy")

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

require('nvim-treesitter.configs').setup({
  ensure_installed = { 'rust', 'javascript', 'zig', 'python' },
  auto_install = true,
  highlight = {enable = true,},
  indent = {enable = true,} 
})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
