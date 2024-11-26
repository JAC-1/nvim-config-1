return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'rose-pine'
    end,
    config = function()
      require('rose-pine').setup {
        disable_background = false,
        styles = {
          italic = false,
        },
      }
    end,
  },
}
