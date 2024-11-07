-- Test line for configuration
return {
  {
    'olimorris/codecompanion.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'hrsh7th/nvim-cmp', -- Optional: For using slash commands and variables in the chat buffer
      'nvim-telescope/telescope.nvim', -- Optional: For using slash commands
      { 'stevearc/dressing.nvim', opts = {} }, -- Optional: Improves `vim.ui.select`
    },
    config = function()
      require('codecompanion').setup {
        strategies = {
          chat = {
            adapter = 'anthropic_sonnet',
          },
          inline = {
            adapter = 'copilot',
          },
          agent = {
            adapter = 'copilot',
          },
        },
        display = {
          chat = {
            -- window = {
            --   layout = 'float',
            -- },
            diff = {
              enabled = false,
            },
          },
        },
        adapters = {
          anthropic_sonnet = function()
            return require('codecompanion.adapters').extend('anthropic', {
              env = {
                api_key = 'cmd:pass show Anthropic/api_key',
              },
              schema = {
                model = {
                  default = 'claude-3-5-sonnet-20241022',
                },
              },
            })
          end,

          anthropic_hiku = function()
            return require('codecompanion.adapters').extend('anthropic', {
              env = {
                api_key = 'cmd:pass show Anthropic/api_key',
              },
              schema = {
                model = {
                  default = 'claude-3-haiku-20240307',
                },
              },
            })
          end,
        },
      }
    end,
  },
}
