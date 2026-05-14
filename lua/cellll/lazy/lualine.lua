return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function(_, opts)
    -- Ensure sections exist
    opts.sections = opts.sections or {}
    opts.sections.lualine_x = opts.sections.lualine_x or {}

    -- Add diagnostics to section C (middle left, near filename)
    table.insert(opts.sections.lualine_x,1, {
      'diagnostics',
      sources = { 'nvim_lsp' },
      sections = { 'error', 'warn', 'info', 'hint' },
      symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
      colored = true,
      update_in_insert = false,
      always_visible = false,
    })

    return opts
  end,
}



