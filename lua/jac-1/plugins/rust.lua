return {
  {
    'mrcjkb/rustaceanvim',
    version = '^5',
    lazy = false,
    ft = { 'rust' },
    config = function()
      vim.g.rustaceanvim = {
        tools = {
          hover_actions = {
            auto_focus = false,
          },
        },
        server = {
          on_attach = function(_, bufnr)
            -- Rust-specific keymaps
            local map = function(keys, func, desc)
              vim.keymap.set('n', keys, func, { buffer = bufnr, desc = 'Rust: ' .. desc })
            end
            map('<leader>rr', function()
              vim.cmd.RustLsp 'runnables'
            end, 'Runnables')
            map('<leader>rt', function()
              vim.cmd.RustLsp 'testables'
            end, 'Testables')
            map('<leader>re', function()
              vim.cmd.RustLsp 'expandMacro'
            end, 'Expand macro')
            map('<leader>rc', function()
              vim.cmd.RustLsp 'openCargo'
            end, 'Open Cargo.toml')
            map('<leader>rp', function()
              vim.cmd.RustLsp 'parentModule'
            end, 'Parent module')
            map('K', function()
              vim.cmd.RustLsp { 'hover', 'actions' }
            end, 'Hover actions')
          end,
          default_settings = {
            ['rust-analyzer'] = {
              cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
                buildScripts = { enable = true },
              },
              checkOnSave = true,
              check = { command = 'clippy' },
              procMacro = {
                enable = true,
                ignored = {
                  ['async-trait'] = { 'async_trait' },
                  ['napi-derive'] = { 'napi' },
                  ['async-recursion'] = { 'async_recursion' },
                },
              },
            },
          },
        },
      }
    end,
  },
  {
    'Saecki/crates.nvim',
    event = { 'BufRead Cargo.toml' },
    opts = {
      completion = {
        cmp = { enabled = false },
        crates = { enabled = true },
      },
      lsp = {
        enabled = true,
        actions = true,
        completion = true,
        hover = true,
      },
    },
  },
}
