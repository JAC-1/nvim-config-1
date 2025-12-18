-- Utility functions for Neovim configuration
-- Provides shared helper functions across the config

local M = {}

--- Set a keymap with consistent defaults
--- @param mode string|table The mode(s) for the keymap (e.g., 'n', 'v', {'n', 'v'})
--- @param lhs string The key combination to map
--- @param rhs string|function The command or function to execute
--- @param opts table|nil Optional configuration table (desc, silent, noremap, etc.)
function M.SetKeymap(mode, lhs, rhs, opts)
  opts = opts or {}

  -- Set default options
  local default_opts = {
    silent = true,
    noremap = true,
  }

  -- Merge provided opts with defaults, preferring provided opts
  opts = vim.tbl_extend('force', default_opts, opts)

  vim.keymap.set(mode, lhs, rhs, opts)
end

return M
