return {
  'folke/tokyonight.nvim',
  priority = 1000,
  opts = {
    style = 'night',
    transparent = false,
    terminal_colors = true,
    styles = {
      comments = { italic = false },
      keywords = { italic = false },
      sidebars = 'dark',
      floats = 'dark',
    },
    on_highlights = function(hl, c)
      hl.SignColumn = { bg = c.bg }
      hl.LineNr = { fg = c.dark5 }
      hl.CursorLineNr = { fg = c.blue, bold = true }
    end,
  },
  config = function(_, opts)
    require('tokyonight').setup(opts)
    vim.cmd 'colorscheme tokyonight-night'
  end,
}
