return {
  "nvimtools/none-ls.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettierd,
      },
    })
  end,
}
