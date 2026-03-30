return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '▎' },
      change = { text = '▎' },
      delete = { text = '' },
      topdelete = { text = '' },
      changedelete = { text = '▎' },
      untracked = { text = '▎' },
    },
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns
      local map = function(keys, func, desc)
        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
      end

      -- Hunk navigation
      map(']h', function()
        if vim.wo.diff then
          vim.cmd.normal { ']c', bang = true }
        else
          gs.next_hunk()
        end
      end, 'Next hunk')
      map('[h', function()
        if vim.wo.diff then
          vim.cmd.normal { '[c', bang = true }
        else
          gs.prev_hunk()
        end
      end, 'Prev hunk')

      -- Git actions (under <leader>g)
      map('<leader>gs', gs.stage_hunk, 'Git: Stage hunk')
      map('<leader>gr', gs.reset_hunk, 'Git: Reset hunk')
      map('<leader>gp', gs.preview_hunk, 'Git: Preview hunk')
      map('<leader>gb', function()
        gs.blame_line { full = true }
      end, 'Git: Blame line')
      map('<leader>gS', gs.stage_buffer, 'Git: Stage buffer')
      map('<leader>gR', gs.reset_buffer, 'Git: Reset buffer')
      map('<leader>gd', gs.diffthis, 'Git: Diff this')
    end,
  },
}
