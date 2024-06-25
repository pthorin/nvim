return {
  {
    'someone-stole-my-name/yaml-companion.nvim',
    requires = {
      { 'neovim/nvim-lspconfig' },
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope.nvim' },
    },
    opts = function()
      require('telescope').load_extension 'yaml_schema'
    end,
  },
}
