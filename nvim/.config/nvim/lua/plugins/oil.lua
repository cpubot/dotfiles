return {
  "stevearc/oil.nvim",
  lazy = true,
  keys = {
    { "-", function() require("oil").toggle_float() end, desc = "Open Oil File Explorer" },
  },
  config = function()
    require("oil").setup()
  end,
}
