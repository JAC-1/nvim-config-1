vim.keymap.set('i', 'jj', '<ESC>', { silent = true })
vim.keymap.set('n', ';', ':')

vim.keymap.set('n', '<Esc>', ':nohl<CR>', { silent = true})

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Send highlighted to hole and pastes registery.' })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { silent = true, desc = 'Yank to system clipboard' })
vim.keymap.set('n', '<leader>Y', [["+Y]], { silent = true, desc = 'Yank entire line to system clipboard' })

vim.keymap.set({ 'n', 'v' }, '<leader>dd', [["_d]], { desc = 'Send to hole' })

vim.keymap.set('n', '<C-s>', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Edit all words under cursor.' })

vim.keymap.set('n', '<A-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<A-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<A-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<A-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>e', ':Ex<CR>', { desc = 'Open netrw' })


-- Ai
vim.api.nvim_set_keymap("n", "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true, desc = "Open CodeCompanion Actions" })
vim.api.nvim_set_keymap("v", "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true, desc = "Open CodeCompanion ACtions" })
vim.api.nvim_set_keymap("n", "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true, desc = "Toggle CodeCompanion Chat"})
vim.api.nvim_set_keymap("v", "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true, desc = "Toggle CodeCompanion Chat" })
vim.api.nvim_set_keymap("t", "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true, desc = "Toggle CodeCompanion Chat" })
vim.api.nvim_set_keymap("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true, desc = "Add to CodeCompanino Chat"})

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd([[cab cc CodeCompanion]])

-- Terminal
vim.keymap.set('t', '<leader>t', '<C-\\><C-n>:ToggleTerm<CR>', { desc = 'Toggle terminal'})
vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>', { desc = 'Toggle terminal'})
