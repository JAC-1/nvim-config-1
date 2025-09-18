vim.keymap.set('i', 'jj', '<ESC>', { silent = true })
vim.keymap.set('n', ';', ':')

vim.keymap.set('n', '<Esc>', ':nohl<CR>', { silent = true})

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- greatest remap ever
vim.keymap.set('n', '<leader>p', [["_dP]], { desc = 'Send highlighted to hole and pastes registery.' })
vim.keymap.set('v', '<leader>p', [["_dP]], { desc = 'Send highlighted to hole and pastes registery.' })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { silent = true, desc = 'Yank to system clipboard' })
vim.keymap.set('n', '<leader>Y', [["+Y]], { silent = true, desc = 'Yank entire line to system clipboard' })

vim.keymap.set({ 'n', 'v' }, '<leader>dd', [["_d]], { desc = 'Send to hole' })

vim.keymap.set('n', '<C-s>', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Edit all words under cursor.' })

-- vim.keymap.set('n', '<A-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<A-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<A-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<A-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Focus left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Focus right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Focus lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Focus upper window' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- vim.keymap.set('n', '<leader>e', ':Ex<CR>', { desc = 'Open netrw' })


-- Ai
-- vim.keymap.set("n", "<C-a>", "<cmd>CodeCompanionActions<cr>", { silent = true, desc = "Open CodeCompanion Actions" })
-- vim.keymap.set("v", "<C-a>", "<cmd>CodeCompanionActions<cr>", { silent = true, desc = "Open CodeCompanion Actions" })
-- vim.keymap.set("n", "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", { silent = true, desc = "Toggle CodeCompanion Chat"})
-- vim.keymap.set("v", "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", { silent = true, desc = "Toggle CodeCompanion Chat" })
-- vim.keymap.set("t", "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", { silent = true, desc = "Toggle CodeCompanion Chat" })
-- vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { silent = true, desc = "Add to CodeCompanion Chat"})
-- vim.cmd([[cab cc CodeCompanion]])

vim.keymap.set("n", "<leader>cc", "<cmd>CopilotChatToggle<cr>", { silent = true, desc = "Toggle CodeCompanion Chat"})
vim.keymap.set("v", "<leader>cc", "<cmd>CopilotChatToggle<cr>", { silent = true, desc = "Toggle CodeCompanion Chat" })
vim.keymap.set("t", "<leader>cc", "<cmd>CopilotChatToggle<cr>", { silent = true, desc = "Toggle CodeCompanion Chat" })


-- Terminal
vim.keymap.set('t', '<C-t>', '<C-\\><C-n>:ToggleTerm<CR>', { desc = 'Toggle terminal'})
vim.keymap.set('n', '<C-t>', ':ToggleTerm<CR>', { desc = 'Toggle terminal'})

-- Neotree
-- vim.keymap.set('n', '<leader>e', ':Neotree<CR>', { desc = 'Toggle Neotree'})

-- Netrw 
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { desc = 'Toggle Netrw'})
