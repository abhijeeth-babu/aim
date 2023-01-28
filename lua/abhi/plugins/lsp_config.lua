require("mason").setup()

-- Mason lsp-config setup
require("mason-lspconfig").setup({
  ensure_installed = { "sumneko_lua" },
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, {desc = "Rename"})
  vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, {desc = "Code actions"})
  vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, {desc = "Go to definition"})
  vim.keymap.set('n', '<leader>lS', require('telescope.builtin').lsp_references, {desc = "Find all references"})
  vim.keymap.set('n', '<leader>lK', vim.lsp.buf.hover, {desc = "Show information"})
  vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, {desc = "Go to implementation"})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

