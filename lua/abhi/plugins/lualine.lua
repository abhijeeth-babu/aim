require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    disabled_filetypes = { 'lazy', 'NvimTree', 'alpha' },
    ignore_focus = {
      "dapui_watches",
      "dapui_breakpoints",
      "dapui_scopes",
      "dapui_console",
      "dapui_stacks",
      "dapui_repl",
    },
  },
}
