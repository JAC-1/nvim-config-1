return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    { 'j-hui/fidget.nvim', opts = {} },
  },
  config = function()
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc, mode)
          mode = mode or 'n'
          vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = desc })
        end

        -- Go-to navigation
        map('gd', require('telescope.builtin').lsp_definitions, 'Go to definition')
        map('gr', require('telescope.builtin').lsp_references, 'Go to references')
        map('gI', require('telescope.builtin').lsp_implementations, 'Go to implementation')
        map('gD', vim.lsp.buf.declaration, 'Go to declaration')
        map('K', vim.lsp.buf.hover, 'Hover docs')

        -- Code actions (under <leader>c)
        map('<leader>ca', vim.lsp.buf.code_action, 'Code action', { 'n', 'x' })
        map('<leader>cr', vim.lsp.buf.rename, 'Rename symbol')
        map('<leader>cd', require('telescope.builtin').lsp_type_definitions, 'Type definition')

        -- Search symbols (under <leader>s)
        map('<leader>sd', require('telescope.builtin').lsp_document_symbols, 'Document symbols')
        map('<leader>sw', require('telescope.builtin').lsp_dynamic_workspace_symbols, 'Workspace symbols')

        -- Inlay hints toggle
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
          map('<leader>uh', function()
            vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
          end, 'Toggle inlay hints')
        end
      end,
    })

    -- Diagnostics config
    vim.diagnostic.config {
      virtual_text = false,
      signs = true,
      underline = true,
      update_in_insert = false,
      float = {
        focusable = false,
        style = 'minimal',
        border = 'rounded',
        source = true,
        header = '',
        prefix = '',
      },
    }

    -- Capabilities via blink.cmp
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, require('blink.cmp').get_lsp_capabilities())

    -- Server configurations
    local servers = {
      -- Lua
      lua_ls = {
        settings = {
          Lua = {
            completion = { callSnippet = 'Replace' },
            diagnostics = { disable = { 'missing-fields' } },
          },
        },
      },

      -- TypeScript / JavaScript (vtsls — VS Code-compatible)
      vtsls = {
        settings = {
          typescript = {
            inlayHints = {
              parameterNames = { enabled = 'literals' },
              parameterTypes = { enabled = true },
              variableTypes = { enabled = false },
              propertyDeclarationTypes = { enabled = true },
              functionLikeReturnTypes = { enabled = true },
              enumMemberValues = { enabled = true },
            },
          },
        },
      },

      -- Python
      pyright = {
        settings = {
          pyright = { disableOrganizeImports = true },
          python = {
            analysis = {
              ignore = { '*' },
            },
          },
        },
      },
      ruff = {
        capabilities = {
          hoverProvider = false,
        },
      },

      -- Web
      html = { filetypes = { 'html', 'htmldjango' } },
      cssls = {},
      tailwindcss = {
        filetypes = {
          'html', 'css', 'scss',
          'javascript', 'javascriptreact',
          'typescript', 'typescriptreact',
        },
      },
      emmet_ls = {
        filetypes = {
          'html', 'css', 'scss',
          'javascript', 'javascriptreact',
          'typescript', 'typescriptreact',
          'htmldjango',
        },
        init_options = {
          html = {
            options = {
              ['bem.enabled'] = true,
            },
          },
        },
      },
      htmx = {
        filetypes = { 'html', 'htmldjango' },
      },
    }

    -- Mason setup
    require('mason').setup {
      ui = {
        border = 'rounded',
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    }

    -- Ensure tools are installed via Mason
    local ensure_installed = vim.tbl_keys(servers or {})
    vim.list_extend(ensure_installed, {
      'stylua',
      'prettierd',
      'ruff',
      'black',
    })
    require('mason-tool-installer').setup { ensure_installed = ensure_installed }

    require('mason-lspconfig').setup {
      handlers = {
        function(server_name)
          -- rustaceanvim handles rust_analyzer separately
          if server_name == 'rust_analyzer' then
            return
          end
          local server = servers[server_name] or {}
          server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
          require('lspconfig')[server_name].setup(server)
        end,
      },
    }
  end,
}
