return {
  'FotiadisM/tabset.nvim',
  opts = function()
    require('tabset').setup {
      defaults = {
        tabwidth = 2,
        expandtab = true,
      },
      languages = {
        go = {
          tabwidth = 4,
          expandtab = false,
        },
        xml = {
          tabwidth = 4,
          expandtab = true,
        },
        {
          filetypes = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'json', 'yaml' },
          config = {
            tabwidth = 2,
          },
        },
      },
    }
  end,
}
