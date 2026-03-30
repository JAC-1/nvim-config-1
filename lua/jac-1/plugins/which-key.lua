return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  opts = {
    delay = 400,
    icons = {
      mappings = vim.g.have_nerd_font,
      keys = vim.g.have_nerd_font and {} or {
        Up = '<Up>',
        Down = '<Down>',
        Left = '<Left>',
        Right = '<Right>',
        C = '<C->',
        M = '<M->',
        CR = '<CR>',
        Esc = '<Esc>',
        Space = '<Space>',
        Tab = '<Tab>',
      },
    },
    spec = {
      -- Top-level groups
      { '<leader>a', group = 'AI (Avante)', icon = '' },
      { '<leader>c', group = 'Code', mode = { 'n', 'x' }, icon = '' },
      { '<leader>g', group = 'Git', icon = '' },
      { '<leader>h', group = 'Harpoon', icon = '' },
      { '<leader>s', group = 'Search', icon = '' },
      { '<leader>t', group = 'Test', icon = '' },
      { '<leader>x', group = 'Diagnostics', icon = '' },
      { '<leader>u', group = 'UI', icon = '' },
      { '<leader>r', group = 'Rust', icon = '' },
      -- Non-leader groups
      { 'gz', group = 'Surround' },
      { 'g', group = 'Go to' },
      { ']', group = 'Next' },
      { '[', group = 'Prev' },
    },
  },
}
