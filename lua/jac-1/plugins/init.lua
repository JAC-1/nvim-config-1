-- ============================================================================
-- Plugin Configuration Index
-- ============================================================================
-- This file serves as the main entry point for plugin loading.
-- Uncomment plugins as needed for your workflow.
--
-- Organization:
--   1. AI/Code Assistance (GitHub Copilot, etc.)
--   2. UI Enhancements (noice, etc.)
--   3. Terminal Integration (toggleterm)
--   4. Optional/Experimental plugins (commented out)
--
-- Note: Chat-focused plugins like CodeCompanion and CopilotChat have been
-- removed to streamline the config. Use terminal-based Claude Code instead.
-- ============================================================================

return {
  -- ============================================================================
  -- AI/Code Assistance
  -- ============================================================================

  -- GitHub Copilot: AI-powered code completion and CLI integration
  -- Provides inline code suggestions and terminal commands via 'gh copilot'
  require 'jac-1.plugins.copilot',

  -- OPTIONAL: Alternative AI plugins (uncomment to enable)
  -- require("jac-1.plugins.ai"),           -- CodeCompanion (chat-focused, deprecated)
  -- require("jac-1.plugins.copilotchat"),  -- CopilotChat (chat-focused, deprecated)
  -- require("jac-1.plugins.codeium"),      -- Codeium alternative

  -- ============================================================================
  -- UI Enhancements
  -- ============================================================================

  -- Noice: Enhanced UI for messages, cmdline and popupmenu
  require 'jac-1.plugins.noice',

  -- ============================================================================
  -- Terminal Integration
  -- ============================================================================

  -- ToggleTerm: Terminal management for Claude Code and other CLI tools
  require 'jac-1.plugins.toggleterm',

  -- ============================================================================
  -- Additional Plugins
  -- ============================================================================
  -- Uncomment below to enable additional plugin modules:
  -- require("jac-1.plugins.neo-tree"),     -- File explorer
  -- require("jac-1.plugins.harpoon"),      -- Quick file navigation
  -- require("jac-1.plugins.lazygit"),      -- Git UI integration
  -- require("jac-1.plugins.trouble"),      -- Pretty diagnostics
  -- require("jac-1.plugins.autopairs"),    -- Auto-close brackets
  -- require("jac-1.plugins.detour"),       -- Window management
}
