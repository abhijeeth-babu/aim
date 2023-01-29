local dap = require('dap')
local dapui = require("dapui")
dapui.setup()

-- Telescope integration
require('telescope').load_extension('dap')

-- Virtual text
require("nvim-dap-virtual-text").setup()

-- Python dap
require('dap-python').setup("~/AppData/Local/nvim-data/mason/packages/debugpy/venv/Scripts/pythonw.exe")

-- Use this for automatic toggling of dapui
-- dap.listeners.after.event_initialized["dapui_config"] = function()
--   dapui.open()
-- end
-- dap.listeners.before.event_terminated["dapui_config"] = function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited["dapui_config"] = function()
--   dapui.close()
-- end

vim.api.nvim_set_hl(0, "red",   { fg = "#ab1f2a" }) 
vim.api.nvim_set_hl(0, "green",  { fg = "#9ece6a" }) 
vim.api.nvim_set_hl(0, "yellow", { fg = "#FFFF00" }) 
vim.api.nvim_set_hl(0, "orange", { fg = "#f09000" }) 

vim.fn.sign_define('DapBreakpoint',          { text='', texthl='red',   linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text='⟁', texthl='red',   linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointRejected',  { text='', texthl='orange', linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapStopped',             { text='', texthl='yellow',  linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapLogPoint',            { text='', texthl='green', linehl='DapBreakpoint', numhl='DapBreakpoint' })
