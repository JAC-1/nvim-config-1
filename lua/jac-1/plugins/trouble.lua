return {
  'folke/trouble.nvim',
  cmd = 'Trouble',
  opts = {
    modes = {
      diagnostics = {
        auto_close = false,
        auto_open = false,
        focus = true,
      },
    },
  },
  keys = {
    { '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', desc = 'Diagnostics (Trouble)' },
    { '<leader>xd', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', desc = 'Buffer diagnostics (Trouble)' },
    { '<leader>xs', '<cmd>Trouble symbols toggle focus=false<cr>', desc = 'Symbols (Trouble)' },
    { '<leader>xw', '<cmd>Trouble diagnostics toggle<cr>', desc = 'Workspace diagnostics (Trouble)' },
    { '<leader>xL', '<cmd>Trouble loclist toggle<cr>', desc = 'Location list (Trouble)' },
    { '<leader>xQ', '<cmd>Trouble qflist toggle<cr>', desc = 'Quickfix list (Trouble)' },
  },
}
