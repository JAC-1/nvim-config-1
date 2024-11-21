return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
            '                                   ',
            '   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ',
            '    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ',
            '          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ',
            '           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ',
            '          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ',
            '   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ',
            '  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ',
            ' ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ',
            ' ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ',
            '      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ',
            '       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ',
            '                                   ',
            '              Code Artistry              ',
            "     Crafting Tomorrow's Solutions Today    ",
            '                                   ',
          },
          center = {
            {
              icon = '  ',
              icon_hl = 'Title',
              desc = 'Find File          ',
              desc_hl = 'String',
              key = 'f',
              -- keymap = 'SPC s f',
              key_hl = 'Number',
              action = 'Telescope find_files',
            },
            {
              icon = '  ',
              desc = 'Find Word          ',
              key = 'w',
              -- keymap = 'SPC s g',
              action = 'Telescope live_grep',
            },
            {
              icon = '  ',
              desc = 'Recent Files          ',
              key = 'r',
              -- keymap = 'SPC s .',
              action = 'Telescope oldfiles',
            },
            {
              icon = '  ',
              desc = 'Config Files          ',
              key = 'c',
              -- keymap = 'SPC s n',
              action = function()
                local os_name = vim.loop.os_uname().sysname
                print(os_name)
                if os_name ==  "Windows_NT" then
                  vim.cmd 'cd C:/Users/Justin/AppData/Local/nvim'
                else
                  vim.cmd 'cd ~/.config/nvim'
                end
                -- vim.cmd 'cd ~/.config/nvim'
                vim.cmd 'Telescope find_files'
              end,
            },
            {
              icon = '  ',
              desc = 'New File          ',
              key = 'n',
              -- keymap = 'SPC n',
              action = 'enew',
            },
            {
              icon = '  ',
              desc = 'Quit Neovim          ',
              key = 'q',
              -- keymap = 'SPC q',
              action = 'qa',
            },
          },
          footer = function()
            local stats = require('lazy').stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { '⚡ Neovim loaded ' .. stats.loaded .. '/' .. stats.count .. ' plugins in ' .. ms .. 'ms' }
          end,
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
}
