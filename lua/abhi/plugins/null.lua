local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- code_actions
    null_ls.builtins.code_actions.shellcheck,
    -- diagnostics sources
    null_ls.builtins.diagnostics.pylint,

    -- formatting
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.black,


  },
})

require("mason-null-ls").setup({
  ensure_installed = { "stylua" }
})
