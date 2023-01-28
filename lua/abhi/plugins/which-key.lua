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
    x = {"<cmd>wqa!<cr>", "Write and quit all Buffers"},
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
}, { prefix = "<leader>" })

wk.register({
  ["<leader>b"] = {name = "Buffer navigation"},
  ["<leader>b["] = {"<cmd>BufferLineCyclePrev<cr>", "Prev Buffer"},
  ["<leader>b]"] = {"<cmd>BufferLineCyclePrev<cr>", "Prev Buffer"},
  ["<leader>bd"] = {"<cmd>BufferLineCyclePrev<cr>", "Delete Buffer"},
})
