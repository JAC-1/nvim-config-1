return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    -- Adapters
    'nvim-neotest/neotest-jest',
    'marilari88/neotest-vitest',
    'nvim-neotest/neotest-python',
    'mrcjkb/rustaceanvim', -- rust adapter is included in rustaceanvim
  },
  keys = {
    {
      '<leader>tr',
      function()
        require('neotest').run.run()
      end,
      desc = 'Test: Run nearest',
    },
    {
      '<leader>tf',
      function()
        require('neotest').run.run(vim.fn.expand '%')
      end,
      desc = 'Test: Run file',
    },
    {
      '<leader>ts',
      function()
        require('neotest').summary.toggle()
      end,
      desc = 'Test: Toggle summary',
    },
    {
      '<leader>to',
      function()
        require('neotest').output_panel.toggle()
      end,
      desc = 'Test: Toggle output',
    },
    {
      '<leader>tS',
      function()
        require('neotest').run.stop()
      end,
      desc = 'Test: Stop',
    },
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-jest' {
          jestCommand = 'npx jest',
          jestConfigFile = function()
            local file = vim.fn.expand '%:p'
            if string.find(file, '/packages/') then
              return string.match(file, '(.-/[^/]+/)src') .. 'jest.config.ts'
            end
            return vim.fn.getcwd() .. '/jest.config.ts'
          end,
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        },
        require 'neotest-vitest',
        require 'neotest-python' {
          dap = { justMyCode = false },
          runner = 'pytest',
          python = '.venv/bin/python',
        },
        require('rustaceanvim.neotest'),
      },
      discovery = {
        enabled = true,
        concurrent = 1,
      },
      output = {
        enabled = true,
        open_on_run = false,
      },
      output_panel = {
        enabled = true,
        open = 'botright split | resize 15',
      },
      status = {
        enabled = true,
        virtual_text = true,
        signs = true,
      },
    }
  end,
}
