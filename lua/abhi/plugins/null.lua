local null_ls = require("null-ls")

null_ls.setup({
  sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.autopep8,
      null_ls.builtins.code_actions.shellcheck,
      null_ls.builtins.diagnostics.flake8,
  },
})

require("mason-null-ls").setup({
    ensure_installed = { "stylua", "autopep8" }
})


