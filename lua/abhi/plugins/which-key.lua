local wk = require("which-key")

wk.register({
  e = {"<cmd>NvimTreeFindFileToggle<cr>", "NvimTree"},
  h = {"<cmd>nohlsearch<cr>", "Clear Highlight"},
  l = {
    name = "+lsp"
  },
  w = {
    name = "+write",
    w = {"<cmd>w!<cr>", "Write Buffer"},
    q = {"<cmd>wq!<cr>", "Write and quit Buffer"},
    a = {"<cmd>wqa!<cr>", "Write and quit all Buffers"},
  },
  q = {
    name = "+quit",
    q = {"<cmd>q!<cr>", "Quit current tab"},
    a = {"<cmd>qa!<cr>", "Quit all tabs"},
  },
  t = {
    name = "+Telescope",
    f = {"<cmd>Telescope find_files<cr>", "Find File"},
    g = {"<cmd>Telescope live_grep<cr>", "Live Grep"},
    b = {"<cmd>Telescope buffers<cr>", "Buffers"},
    h = {"<cmd>Telescope help_tags<cr>", "Help Tags"},
    r = {"<cmd>Telescope old_files<cr>", "Open Recent Files"},
    s = {"<cmd>Telescope symbols<cr>", "Symbols"},
  },
  d = {
    name = "+dap",
    u = {"<cmd>lua require('dapui').toggle()<cr>", "Toggle dap-ui"},
    b = {"<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle breakpoint"},
    c = {"<cmd>lua require'dap'.continue()<cr>", "Launch or resume"},
    i = {"<cmd>lua require'dap'.step_into()<cr>", "Step into"},
    o = {"<cmd>lua require'dap'.step_over()<cr>", "Step over"},
    r = {"<cmd>lua require'dap'.repl.open()<cr>", "Open REPL"},
  },
}, { prefix = "<leader>" })

wk.register({
  ["<leader>b"] = {name = "Buffer navigation"},
  ["<leader>b["] = {"<cmd>BufferLineCyclePrev<cr>", "Prev Buffer"},
  ["<leader>b]"] = {"<cmd>BufferLineCyclePrev<cr>", "Prev Buffer"},
  ["<leader>bd"] = {"<cmd>BufferLineCyclePrev<cr>", "Delete Buffer"},
  ["<leader>/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment toggle linewise (visual)" },
})
