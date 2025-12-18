-- ============================================================================
-- lazydev: Neovim Lua development configuration
-- ============================================================================
-- Configures Lua LSP for Neovim config, runtime, and plugin development.
-- Provides completion, annotations, and signatures for Neovim APIs.
-- ============================================================================

return {
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = 'luvit-meta/library', words = { 'vim%.uv' } },
      },
    },
  },
  { 'Bilal2453/luvit-meta', lazy = true },
}
