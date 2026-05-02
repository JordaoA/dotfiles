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
vim.keymap.set('n', '<leader>o', ':Neotree reveal<CR>', { noremap = true, silent = true, desc = 'Reveal file in Neo-tree' })
vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>', { noremap = true, silent = true, desc = 'Toggle Terminal' })

require('nvim-treesitter.configs').setup({
  ensure_installed = { 'rust', 'javascript', 'zig', 'python' },
  auto_install = true,
  highlight = {enable = true,},
  indent = {enable = true,} 
})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
