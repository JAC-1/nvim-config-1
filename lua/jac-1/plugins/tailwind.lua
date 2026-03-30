return {
  'luckasRanarison/tailwind-tools.nvim',
  name = 'tailwind-tools',
  build = ':UpdateRemotePlugins',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  ft = { 'html', 'css', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
  opts = {
    document_color = {
      enabled = true,
      kind = 'inline',
      inline_symbol = '󰝤 ',
      debounce = 200,
    },
    conceal = {
      enabled = false,
    },
    cmp = {
      highlight = 'foreground',
    },
    telescope = {
      utilities = {
        callback = function(_, _) end,
      },
    },
  },
}
