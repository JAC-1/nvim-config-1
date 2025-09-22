-- Other keymaps can be found in the plugin configs

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


-- Code Companion
vim.keymap.set('n', '<C-a>', '<cmd>CodeCompanionActions<cr>', { silent = true, desc = 'Open CodeCompanion Actions' })
vim.keymap.set('v', '<C-a>', '<cmd>CodeCompanionActions<cr>', { silent = true, desc = 'Open CodeCompanion Actions' })
vim.keymap.set('n', '<leader>cc', '<cmd>CodeCompanionChat Toggle<cr>', { silent = true, desc = 'Toggle CodeCompanion Chat' })
vim.keymap.set('v', '<leader>cc', '<cmd>CodeCompanionChat Toggle<cr>', { silent = true, desc = 'Toggle CodeCompanion Chat' })
vim.keymap.set('t', '<leader>cc', '<cmd>CodeCompanionChat Toggle<cr>', { silent = true, desc = 'Toggle CodeCompanion Chat' })
vim.keymap.set('v', 'ga', '<cmd>CodeCompanionChat Add<cr>', { silent = true, desc = 'Add to CodeCompanion Chat' })
vim.keymap.set('v', '<C-CR>', [[:CodeCompanion ]], { desc = 'CodeCompanion Inline' })



-- Exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('t', '<C-t>', '<C-\\><C-n>:ToggleTerm<CR>', { desc = 'Toggle terminal' })
vim.keymap.set('n', '<C-t>', ':ToggleTerm<CR>', { desc = 'Toggle terminal' })

-- Neotree
-- vim.keymap.set('n', '<leader>e', ':Neotree<CR>', { desc = 'Toggle Neotree'})

-- Netrw
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { desc = 'Toggle Netrw' })
