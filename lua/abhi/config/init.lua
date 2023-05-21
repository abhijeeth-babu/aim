vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

--
vim.opt.ignorecase = true
vim.opt.number = true
vim.opt.relativenumber = true

-- vim.opt.shell = "pwsh"

vim.opt.clipboard = "unnamedplus"

-- autoformat on save
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
