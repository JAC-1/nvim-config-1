-- ============================================================================
-- Plugin Configuration Index
-- ============================================================================
-- This file serves as the main entry point for plugin loading.
-- Uncomment plugins as needed for your workflow.
--
-- Organization:
--   1. Core Plugins (vim-sleuth)
--   2. LSP (lsp, lazydev)
--   3. Completion (cmp)
--   4. UI (which-key, telescope, mini, gitsigns, todo-comments)
--   5. Editing (treesitter, conform)
--   6. AI/Code Assistance (GitHub Copilot, etc.)
--   7. Terminal Integration (toggleterm, noice)
--   8. Optional/Experimental plugins (commented out)
-- ============================================================================

return {
  -- ============================================================================
  -- Core Plugins
  -- ============================================================================

  -- vim-sleuth: Automatic indentation detection
  require 'jac-1.plugins.vim-sleuth',

  -- ============================================================================
  -- LSP Configuration
  -- ============================================================================

  -- lazydev: Neovim Lua development support
  require 'jac-1.plugins.lazydev',

  -- lsp: Language Server Protocol configuration
  require 'jac-1.plugins.lsp',

  -- ============================================================================
  -- Completion
  -- ============================================================================

  -- cmp: Autocompletion with LuaSnip
  require 'jac-1.plugins.cmp',

  -- ============================================================================
  -- UI Enhancements
  -- ============================================================================

  -- which-key: Display pending keybindings
  require 'jac-1.plugins.which-key',

  -- telescope: Fuzzy finder
  require 'jac-1.plugins.telescope',

  -- mini: Collection of small plugins (statusline, surround, ai)
  require 'jac-1.plugins.mini',

  -- gitsigns: Git integration for buffers
  require 'jac-1.plugins.gitsigns',

  -- todo-comments: Highlight TODO, FIXME, etc.
  require 'jac-1.plugins.todo-comments',

  -- ============================================================================
  -- Editing Enhancements
  -- ============================================================================

  -- treesitter: Advanced syntax highlighting
  require 'jac-1.plugins.treesitter',

  -- conform: Autoformatting
  require 'jac-1.plugins.conform',

  -- ============================================================================
  -- AI/Code Assistance
  -- ============================================================================

  -- GitHub Copilot: AI-powered code completion and CLI integration
  require 'jac-1.plugins.copilot',

  -- OPTIONAL: Alternative AI plugins (uncomment to enable)
  -- require("jac-1.plugins.ai"),           -- CodeCompanion (chat-focused, deprecated)
  -- require("jac-1.plugins.copilotchat"),  -- CopilotChat (chat-focused, deprecated)

  -- ============================================================================
  -- Terminal Integration
  -- ============================================================================

  -- Noice: Enhanced UI for messages, cmdline and popupmenu
  require 'jac-1.plugins.noice',

  -- ToggleTerm: Terminal management for Claude Code and other CLI tools
  require 'jac-1.plugins.toggleterm',

  -- ============================================================================
  -- Optional Plugins
  -- ============================================================================
  -- Uncomment below to enable additional plugin modules:
  -- require("jac-1.plugins.neo-tree"),     -- File explorer
  -- require("jac-1.plugins.harpoon"),      -- Quick file navigation
  -- require("jac-1.plugins.lazygit"),      -- Git UI integration
  -- require("jac-1.plugins.trouble"),      -- Pretty diagnostics
  -- require("jac-1.plugins.autopairs"),    -- Auto-close brackets
  -- require("jac-1.plugins.detour"),       -- Window management
  -- require("jac-1.plugins.colors"),       -- Color scheme configuration
  -- require("jac-1.plugins.prisma"),       -- Prisma support
}
