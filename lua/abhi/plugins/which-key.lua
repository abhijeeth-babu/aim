local wk = require("which-key")

wk.register({
	e = { "<cmd>NvimTreeFindFileToggle<cr>", "nvimtree" },
	h = { "<cmd>nohlsearch<cr>", "clear highlight" },
	l = {
		name = "+lsp",
	},
	w = {
		name = "+write",
		w = { "<cmd>w!<cr>", "write buffer" },
		q = { "<cmd>wq!<cr>", "write and quit buffer" },
		a = { "<cmd>wqa!<cr>", "write and quit all buffers" },
	},
	q = {
		name = "+quit",
		q = { "<cmd>q!<cr>", "quit current tab" },
		a = { "<cmd>qa!<cr>", "quit all tabs" },
	},
	t = {
		name = "+Telescope",
		f = { "<cmd>Telescope find_files<cr>", "find file" },
		g = {
			name = "+grep",
			a = { "<cmd>Telescope live_grep<cr>", "live grep all" },
			c = {
				"<cmd>lua require('telescope.builtin').live_grep({search_dirs={vim.fn.expand('%:p')}})<cr>",
				"live grep current",
			},
		},
		b = { "<cmd>Telescope buffers<cr>", "buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "help tags" },
		r = { "<cmd>Telescope old_files<cr>", "open recent files" },
		s = { "<cmd>Telescope symbols<cr>", "symbols" },
		d = {
			name = "+DAP",
			c = { "<cmd>lua require'telescope'.extensions.dap.commands{}<CR>", "Dap Commands" },
			s = { "<cmd>lua require'telescope'.extensions.dap.configurations{}<CR>", "Dap Configurations" },
			b = { "<cmd>lua require'telescope'.extensions.dap.list_breakpoints{}<CR>", "List Breakpoints" },
			v = { "<cmd>lua require'telescope'.extensions.dap.variables{}<CR>", "Variables" },
			f = { "<cmd>lua require'telescope'.extensions.dap.frames{}<CR>", "Frames" },
		},
    r = { "<cmd>lua require('telescope').extensions.refactoring.refactors()<CR>", "Refactor Code", mode = "v" }
	},
	d = {
		name = "+dap",
		u = { "<cmd>lua require('dapui').toggle()<cr>", "toggle dap-ui" },
		b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "toggle breakpoint" },
		c = { "<cmd>lua require'dap'.continue()<cr>", "launch or resume" },
		s = {
			name = "+Step",
			i = { "<cmd>lua require'dap'.step_into()<cr>", "Step into" },
			O = { "<cmd>lua require'dap'.step_over()<cr>", "Step over" },
			o = { "<cmd>lua require'dap'.step_out()<cr>", "Step out" },
		},
		r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle REPL" },
		e = { "<cmd>lua require'dapui'.eval()<cr>", "Evaluate expression" },
    e = { "<cmd>lua require('dapui').eval()<cr>", "Evaluate expression", mode = "v" },
	},
	f = { "<cmd>lua vim.lsp.buf.format()<cr>", "Format code" },
}, { prefix = "<leader>" })

wk.register({
	["<leader>b"] = { name = "Buffer navigation" },
	["<leader>b["] = { "<cmd>BufferLineCyclePrev<cr>", "Prev Buffer" },
	["<leader>b]"] = { "<cmd>BufferLineCyclePrev<cr>", "Prev Buffer" },
	["<leader>bd"] = { "<cmd>bd!<cr>", "Delete Buffer" },
})
