return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    { "<Tab>",   "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
    { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
  },
  after = "catppuccin",
  config = function()
    require("bufferline").setup({
      options = {
        highlights = require("catppuccin.groups.integrations.bufferline").get(),
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(_, _, diagnostics_dict, _)
          local s = " "
          for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " "
                or (e == "warning" and " " or " ")
            s = s .. n .. sym
          end
          return s
        end
      }
    })
  end,
}
