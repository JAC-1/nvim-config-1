return {
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    -- Examples: va) yinq ci'
    require('mini.ai').setup { n_lines = 500 }

    -- Surround operations — prefix changed to gz to free s for flash.nvim
    -- gzs + motion = add surround    e.g. gzsiw) wraps word in parens
    -- gzd + char  = delete surround  e.g. gzd'
    -- gzr + char  = replace surround e.g. gzr)'
    require('mini.surround').setup {
      mappings = {
        add = 'gza',
        delete = 'gzd',
        find = 'gzf',
        find_left = 'gzF',
        highlight = 'gzh',
        replace = 'gzr',
        update_n_lines = 'gzn',
      },
    }

    -- Commenting: gc line, gbc block
    require('mini.comment').setup()

    -- Auto-pairs for brackets/quotes
    require('mini.pairs').setup {
      modes = { insert = true, command = false, terminal = false },
    }

    -- Move lines/selection with Alt+hjkl
    require('mini.move').setup {
      mappings = {
        left = '<M-h>',
        right = '<M-l>',
        down = '<M-j>',
        up = '<M-k>',
        line_left = '<M-h>',
        line_right = '<M-l>',
        line_down = '<M-j>',
        line_up = '<M-k>',
      },
    }

    -- Icons (replaces nvim-web-devicons)
    require('mini.icons').setup()
    MiniIcons.mock_nvim_web_devicons()

    -- Notifications (replaces nvim-notify)
    require('mini.notify').setup {
      window = {
        config = { border = 'rounded' },
        max_width_share = 0.382,
        winblend = 0,
      },
      lsp_progress = { enable = false },
    }
    vim.notify = MiniNotify.make_notify()

    -- Statusline: minimal — mode, filename, git, diagnostics, position
    local statusline = require 'mini.statusline'
    statusline.setup {
      use_icons = vim.g.have_nerd_font,
      content = {
        active = function()
          local mode, mode_hl = MiniStatusline.section_mode { trunc_width = 120 }
          local git = MiniStatusline.section_git { trunc_width = 75 }
          local diagnostics = MiniStatusline.section_diagnostics { trunc_width = 75 }
          local filename = MiniStatusline.section_filename { trunc_width = 140 }
          local location = '%2l:%-2v'
          return MiniStatusline.combine_groups {
            { hl = mode_hl, strings = { mode } },
            { hl = 'MiniStatuslineDevinfo', strings = { git, diagnostics } },
            '%<',
            { hl = 'MiniStatuslineFilename', strings = { filename } },
            '%=',
            { hl = 'MiniStatuslineFileinfo', strings = {} },
            { hl = mode_hl, strings = { location } },
          }
        end,
      },
    }

    -- Tabline: clean buffer tabs
    require('mini.tabline').setup {
      show_icons = vim.g.have_nerd_font,
      set_vim_settings = true,
    }
  end,
}
