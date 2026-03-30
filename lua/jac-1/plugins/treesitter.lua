return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.config').setup {
      ensure_installed = {
        'bash',
        'c',
        'css',
        'diff',
        'html',
        'javascript',
        'jsdoc',
        'json',
        'jsonc',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'prisma',
        'python',
        'query',
        'rust',
        'toml',
        'tsx',
        'typescript',
        'vim',
        'vimdoc',
        'yaml',
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
    }
  end,
}
