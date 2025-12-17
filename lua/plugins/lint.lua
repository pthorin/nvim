return {
  'mfussenegger/nvim-lint',
  config = function()
    require('lint').linters_by_ft = {
      yaml = { 'vacuum', 'redocly' },
    }
    vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
      callback = function()
        require('lint').try_lint()
      end,
    })
    vim.keymap.set('n', '<leader>l', function()
      require('lint').try_lint()
    end, { desc = 'Lint current buffer' })
  end,
}
