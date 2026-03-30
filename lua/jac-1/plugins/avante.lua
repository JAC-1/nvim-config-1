return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  version = false,
  build = 'make',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'echasnovski/mini.icons',
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
  opts = {
    provider = 'claude',
    providers = {
      claude = {
        endpoint = 'https://api.anthropic.com',
        model = 'claude-sonnet-4-5',
        auth_type = 'pro',
        extra_request_body = {
          temperature = 0,
          max_tokens = 8192,
        },
      },
    },
    behaviour = {
      auto_suggestions = false,
      auto_set_highlight_group = true,
      auto_set_keymaps = true,
      auto_apply_diff_after_generation = false,
      support_paste_from_clipboard = false,
    },
    windows = {
      position = 'right',
      wrap = true,
      width = 40,
      sidebar_header = {
        enabled = true,
        align = 'center',
        rounded = false,
      },
      input = {
        prefix = '> ',
        height = 8,
      },
      edit = {
        border = 'rounded',
        start_insert = true,
      },
      ask = {
        floating = false,
        start_insert = true,
        border = 'rounded',
      },
    },
    highlights = {
      diff = {
        current = 'DiffText',
        incoming = 'DiffAdd',
      },
    },
    diff = {
      autojump = true,
      list_opener = 'copen',
    },
  },
  keys = {
    { '<leader>aa', '<cmd>AvanteAsk<CR>', desc = 'Avante: Ask' },
    { '<leader>ae', '<cmd>AvanteEdit<CR>', mode = { 'n', 'v' }, desc = 'Avante: Edit selection' },
    { '<leader>at', '<cmd>AvanteToggle<CR>', desc = 'Avante: Toggle sidebar' },
    { '<leader>ar', '<cmd>AvanteRefresh<CR>', desc = 'Avante: Refresh' },
    { '<leader>af', '<cmd>AvanteFocus<CR>', desc = 'Avante: Focus sidebar' },
    { '<leader>an', '<cmd>AvanteNew<CR>', desc = 'Avante: New chat' },
    { '<leader>a?', '<cmd>AvanteModel<CR>', desc = 'Avante: Select model' },
  },
}
