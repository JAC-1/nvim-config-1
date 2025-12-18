-- Other keymaps can be found in the plugin configs
-- Import utilities
local utils = require 'jac-1.utils'

vim.keymap.set('i', 'jj', '<ESC>', { silent = true })
vim.keymap.set('n', ';', ':')

vim.keymap.set('n', '<Esc>', ':nohl<CR>', { silent = true })

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- greatest remap ever
vim.keymap.set('v', '<leader>p', [["_dP]], { desc = 'Replaces selection with default register without overwriting it.' })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { silent = true, desc = 'Yank to system clipboard' })
vim.keymap.set('n', '<leader>Y', [["+Y]], { silent = true, desc = 'Yank entire line to system clipboard' })

vim.keymap.set({ 'n', 'v' }, '<leader>dd', [["_d]], { desc = 'Send to hole' })

vim.keymap.set('n', '<C-s>', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Edit all words under cursor.' })

-- vim.keymap.set('n', '<A-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<A-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<A-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<A-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Fast buffer navigation
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', { desc = 'Previous buffer' })

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Focus left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Focus right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Focus lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Focus upper window' })

-- Resize windows with arrow keys
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { desc = 'Increase window height' })
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Decrease window width' })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Increase window width' })

-- Move selected lines up/down in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

-- ============================================================================
-- AI Assistant Keymaps
-- ============================================================================

-- Claude Code via terminal integration
-- These keymaps open a terminal with Claude Code CLI for AI assistance
-- Note: Requires Claude Code CLI to be installed and available in PATH
utils.SetKeymap('n', '<leader>ac', function()
  -- Check if 'code' command is available
  local has_code = vim.fn.executable 'code' == 1
  if not has_code then
    vim.notify('Claude Code CLI not found. Please install it first.', vim.log.levels.WARN)
    return
  end

  vim.cmd 'ToggleTerm'
  -- Delay is configurable via vim.g.claude_code_delay (default: 150ms)
  local delay = vim.g.claude_code_delay or 150
  vim.defer_fn(function()
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('icode<CR>', true, false, true), 'n', false)
  end, delay)
end, { desc = 'Open Claude Code in terminal' })

utils.SetKeymap('n', '<leader>at', function()
  vim.cmd 'ToggleTerm'
end, { desc = 'Toggle terminal for AI commands' })

-- GitHub Copilot CLI integration (requires GitHub Copilot CLI installation)
-- Use 'gh copilot suggest' for command suggestions
-- Use 'gh copilot explain' for command explanations

-- ============================================================================
-- Terminal Keymaps
-- ============================================================================

-- Exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('t', '<C-t>', '<C-\\><C-n>:ToggleTerm<CR>', { desc = 'Toggle terminal' })
vim.keymap.set('n', '<C-t>', ':ToggleTerm<CR>', { desc = 'Toggle terminal' })

-- Neotree
-- vim.keymap.set('n', '<leader>e', ':Neotree<CR>', { desc = 'Toggle Neotree'})

-- Netrw
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { desc = 'Toggle Netrw' })
