require("mason").setup()
-- require("mason-nvim-dap").setup({
--   ensure_installed = { "python" },
--   automatic_setup = true,
-- })

-- Mason lsp-config setup
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright" },
})

-- aesthetic icons
vim.fn.sign_define(
  "DiagnosticSignError",
  { texthl = "DiagnosticSignError", text = "", numhl = "DiagnosticSignError" }
)
vim.fn.sign_define(
  "DiagnosticSignWarn",
  { texthl = "DiagnosticSignWarn", text = "", numhl = "DiagnosticSignWarn" }
)
vim.fn.sign_define(
  "DiagnosticSignHint",
  { texthl = "DiagnosticSignHint", text = "", numhl = "DiagnosticSignHint" }
)
vim.fn.sign_define(
  "DiagnosticSignInfo",
  { texthl = "DiagnosticSignInfo", text = "", numhl = "DiagnosticSignInfo" }
)

-- Functionality
local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, { desc = "Rename" })
  vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, { desc = "Code actions" })
  vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = "Go to definition" })
  vim.keymap.set('n', '<leader>lS', require('telescope.builtin').lsp_references, { desc = "Find all references" })
  vim.keymap.set('n', '<leader>lK', vim.lsp.buf.hover, { desc = "Show information" })
  vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, { desc = "Go to implementation" })
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  },
}
require("lspconfig").pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
