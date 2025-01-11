return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        --        transparent_background = true,
        integrations = {
          noice = true,
          notify = true,
          alpha = true,
          bufferline = true,
          fzf = true,
          mason = true,
          neotree = true,
          telescope = {
            enabled = true,
          }
        }
      })
      vim.cmd.colorscheme "catppuccin-macchiato"
    end
  }
}
