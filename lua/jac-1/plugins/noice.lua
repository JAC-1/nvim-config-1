return {
  'folke/noice.nvim',
  dependencies = { 'MunifTanjim/nui.nvim' },
  config = function()
    vim.keymap.set('n', '<leader>k', vim.diagnostic.open_float, { desc = 'Show diagnostics popup' })
    require('noice').setup {
      -- Keep cmdline at the bottom like a normal editor
      cmdline = { enabled = false },
      messages = { enabled = false },
      popupmenu = { enabled = false },
      notify = { enabled = false }, -- handled by mini.notify
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
        },
        hover = { enabled = true },
        signature = { enabled = true },
        progress = { enabled = false },
        message = { enabled = false },
      },
      presets = {
        bottom_search = true,
        long_message_to_split = true,
        lsp_doc_border = true,
      },
    }
  end,
}
