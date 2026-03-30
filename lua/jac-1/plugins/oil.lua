return {
  'stevearc/oil.nvim',
  dependencies = { 'echasnovski/mini.icons' },
  lazy = false,
  opts = {
    default_file_explorer = true,
    columns = { 'icon' },
    buf_options = {
      buflisted = false,
      bufhidden = 'hide',
    },
    win_options = {
      wrap = false,
      signcolumn = 'no',
      cursorcolumn = false,
      foldcolumn = '0',
      spell = false,
      list = false,
      conceallevel = 3,
      concealcursor = 'nvic',
    },
    delete_to_trash = false,
    skip_confirm_for_simple_edits = true,
    prompt_save_on_select_new_entry = true,
    cleanup_delay_ms = 2000,
    lsp_file_methods = {
      timeout_ms = 1000,
      autosave_changes = false,
    },
    float = {
      padding = 2,
      max_width = 80,
      max_height = 30,
      border = 'rounded',
      win_options = {
        winblend = 0,
      },
    },
    preview = {
      max_width = 0.9,
      min_width = { 40, 0.4 },
      width = nil,
      max_height = 0.9,
      min_height = { 5, 0.1 },
      height = nil,
      border = 'rounded',
      win_options = {
        winblend = 0,
      },
      update_on_cursor_moved = true,
    },
    keymaps = {
      ['g?'] = 'actions.show_help',
      ['<CR>'] = 'actions.select',
      ['<C-v>'] = { 'actions.select', opts = { vertical = true } },
      ['<C-s>'] = { 'actions.select', opts = { horizontal = true } },
      ['<C-t>'] = { 'actions.select', opts = { tab = true } },
      ['<C-p>'] = 'actions.preview',
      ['<C-c>'] = 'actions.close',
      ['<C-l>'] = 'actions.refresh',
      ['-'] = 'actions.parent',
      ['_'] = 'actions.open_cwd',
      ['`'] = 'actions.cd',
      ['~'] = { 'actions.cd', opts = { scope = 'tab' } },
      ['gs'] = 'actions.change_sort',
      ['gx'] = 'actions.open_external',
      ['g.'] = 'actions.toggle_hidden',
      ['g\\'] = 'actions.toggle_trash',
    },
    use_default_keymaps = false,
    view_options = {
      show_hidden = false,
      is_hidden_file = function(name, _)
        return vim.startswith(name, '.')
      end,
      is_always_hidden = function(_, _)
        return false
      end,
      natural_order = true,
      case_insensitive = false,
      sort = {
        { 'type', 'asc' },
        { 'name', 'asc' },
      },
    },
  },
  keys = {
    { '<leader>e', '<cmd>Oil --float<CR>', desc = 'Explorer (oil)' },
    { '-', '<cmd>Oil<CR>', desc = 'Open parent dir (oil)' },
  },
}
