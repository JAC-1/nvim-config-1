return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  opts = {
    labels = 'asdfghjklqwertyuiopzxcvbnm',
    search = {
      multi_window = false,
    },
    jump = {
      autojump = false,
    },
    label = {
      uppercase = false,
      after = false,
      before = true,
      style = 'overlay',
      reuse = 'lowercase',
      distance = true,
      min_pattern_length = 0,
      rainbow = {
        enabled = false,
      },
    },
    highlight = {
      backdrop = true,
      matches = true,
      priority = 5000,
      groups = {
        match = 'FlashMatch',
        current = 'FlashCurrent',
        backdrop = 'FlashBackdrop',
        label = 'FlashLabel',
      },
    },
    modes = {
      search = { enabled = false },
      char = { enabled = false },
      treesitter = { enabled = false },
    },
    prompt = {
      enabled = false,
    },
  },
  keys = {
    {
      's',
      mode = { 'n', 'x', 'o' },
      function()
        require('flash').jump()
      end,
      desc = 'Flash jump',
    },
  },
}
