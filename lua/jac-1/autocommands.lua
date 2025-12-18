-- Autocmd for Copilot Chat window styling
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'copilot-chat',
  callback = function()
    -- Debug print to verify trigger
    print('Copilot chat autocmd triggered for filetype: ' .. vim.bo.filetype)

    -- Defer the window resize and settings to ensure window is ready
    vim.schedule(function()
      vim.cmd 'vertical resize 70'
      vim.cmd 'setlocal nonumber'
      vim.cmd 'setlocal norelativenumber'
      vim.cmd 'setlocal signcolumn=no'
      vim.cmd 'setlocal foldcolumn=0'
      vim.cmd 'setlocal laststatus=0'
      vim.cmd 'setlocal sidescrolloff=10'
    end)
  end,
})
