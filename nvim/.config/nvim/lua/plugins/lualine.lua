return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = true,
  event = "BufWinEnter",
  config = function()
    require('lualine').setup({
      options = {
        theme = "catppuccin",
      },
    })
  end,
}
