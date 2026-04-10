return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    'nvim-telescope/telescope.nvim', version = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'master', -- Add this line to use the legacy branch
    lazy = false,
    build = ':TSUpdate'
  },
}
