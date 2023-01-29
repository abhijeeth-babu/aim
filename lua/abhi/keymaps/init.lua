-- general keymaps
local map = vim.keymap.set
-- Normal Mode
-- map('n', '<leader>h', ':nohlsearch<CR>', {noremap = true, silent = false, desc = "Clear highlight"})
map('n', '<Up>', '<Nop>', {noremap = true, silent = false})
map('n', '<Down>', '<Nop>', {noremap = true, silent = false})
map('n', '<Left>', '<Nop>', {noremap = true, silent = false})
map('n', '<Right>', '<Nop>', {noremap = true, silent = false})


-- Visual Mode
map('v', '<Up>', '<Nop>', {noremap = true, silent = false})
map('v', '<Down>', '<Nop>', {noremap = true, silent = false})
map('v', '<Left>', '<Nop>', {noremap = true, silent = false})
map('v', '<Right>', '<Nop>', {noremap = true, silent = false})


-- Insert Mode
map('i', '<Up>', '<Nop>', {noremap = true, silent = false})
map('i', '<Down>', '<Nop>', {noremap = true, silent = false})
map('i', '<Left>', '<Nop>', {noremap = true, silent = false})
map('i', '<Right>', '<Nop>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = false, silent = false})
map('i', 'jk', '<ESC>', {noremap = false, silent = false})
