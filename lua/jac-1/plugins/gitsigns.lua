-- ============================================================================
-- Gitsigns: Git integration for buffers
-- ============================================================================
-- Shows git diff signs in the sign column, provides hunk navigation,
-- and stage/unstage functionality.
-- ============================================================================

return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
}
