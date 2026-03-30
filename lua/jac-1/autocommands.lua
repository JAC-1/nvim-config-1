-- Close certain utility windows with q
vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'help',
    'man',
    'qf',
    'checkhealth',
    'lspinfo',
    'startuptime',
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set('n', 'q', '<cmd>close<cr>', { buffer = event.buf, silent = true })
  end,
})

-- Highlight text on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank { higroup = 'Visual', timeout = 150 }
  end,
})
