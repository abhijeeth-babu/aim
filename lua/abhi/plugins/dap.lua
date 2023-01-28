local dap = require('dap')

require("dapui").setup()
require("nvim-dap-virtual-text").setup()

require('dap-python').setup('~/.virtualenvs/debugpy/Scripts/python.exe')

vim.api.nvim_set_hl(0, "red",   { fg = "#ab1f2a" }) 
vim.api.nvim_set_hl(0, "green",  { fg = "#9ece6a" }) 
vim.api.nvim_set_hl(0, "yellow", { fg = "#FFFF00" }) 
vim.api.nvim_set_hl(0, "orange", { fg = "#f09000" }) 

vim.fn.sign_define('DapBreakpoint',          { text='', texthl='red',   linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text='⟁', texthl='red',   linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointRejected',  { text='', texthl='orange', linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapStopped',             { text='', texthl='yellow',  linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapLogPoint',            { text='', texthl='green', linehl='DapBreakpoint', numhl='DapBreakpoint' })
