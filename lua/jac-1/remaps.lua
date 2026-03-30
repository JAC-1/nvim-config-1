local utils = require 'jac-1.utils'

-- ============================================================================
-- Insert mode
-- ============================================================================
vim.keymap.set('i', 'jj', '<ESC>', { silent = true })

-- ============================================================================
-- Normal mode — general
-- ============================================================================
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', '<Esc>', ':nohl<CR>', { silent = true })

-- Keep search results centered
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Visual line navigation (wrap-friendly)
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- ============================================================================
-- Clipboard
-- ============================================================================
-- Paste over selection without clobbering the register
vim.keymap.set('v', '<leader>p', [["_dP]], { desc = 'Paste without yank' })
-- Yank to system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { silent = true, desc = 'Yank to clipboard' })
vim.keymap.set('n', '<leader>Y', [["+Y]], { silent = true, desc = 'Yank line to clipboard' })
-- Delete to black hole register
vim.keymap.set({ 'n', 'v' }, '<leader>dd', [["_d]], { desc = 'Delete to void' })

-- ============================================================================
-- Quick rename word under cursor
-- ============================================================================
vim.keymap.set('n', '<C-s>', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Rename word under cursor' })

-- ============================================================================
-- Buffer navigation
-- ============================================================================
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { silent = true, desc = 'Next buffer' })
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', { silent = true, desc = 'Prev buffer' })
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { silent = true, desc = 'Buffer: Delete' })

-- ============================================================================
-- Window navigation
-- ============================================================================
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Focus left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Focus right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Focus lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Focus upper window' })

-- Resize windows with arrow keys
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { silent = true, desc = 'Increase height' })
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { silent = true, desc = 'Decrease height' })
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { silent = true, desc = 'Decrease width' })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { silent = true, desc = 'Increase width' })

-- ============================================================================
-- Visual mode
-- ============================================================================
-- Move selection up/down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

-- ============================================================================
-- Terminal
-- ============================================================================
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('t', '<C-t>', '<C-\\><C-n>:ToggleTerm<CR>', { silent = true, desc = 'Toggle terminal' })
vim.keymap.set('n', '<C-t>', ':ToggleTerm<CR>', { silent = true, desc = 'Toggle terminal' })

-- ============================================================================
-- UI toggles (under <leader>u)
-- ============================================================================
utils.SetKeymap('n', '<leader>uw', function()
  vim.wo.wrap = not vim.wo.wrap
end, { desc = 'UI: Toggle word wrap' })
