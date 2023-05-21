-- general keymaps
local map = vim.keymap.set
-- Normal Mode
-- map('n', '<leader>h', ':nohlsearch<CR>', {noremap = true, silent = false, desc = "Clear highlight"})

-- Visual Mode

-- Insert Mode
map("i", "kj", "<ESC>", { noremap = false, silent = false })
map("i", "jk", "<ESC>", { noremap = false, silent = false })
