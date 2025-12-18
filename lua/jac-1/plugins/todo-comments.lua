-- ============================================================================
-- todo-comments: Highlight TODO, FIXME, NOTE, etc. in comments
-- ============================================================================
-- Provides highlighting and searching for comment annotations.
-- ============================================================================

return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    signs = false,
  },
}
