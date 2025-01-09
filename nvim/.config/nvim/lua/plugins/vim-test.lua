return {
  {
    "vim-test/vim-test",
    lazy = true, -- Lazy load the plugin
    keys = {
      { "<leader>t", ":TestNearest<CR>", desc = "Run nearest test" },
      { "<leader>T", ":TestFile<CR>",    desc = "Run test file" },
      { "<leader>a", ":TestSuite<CR>",   desc = "Run test suite" },
      { "<leader>l", ":TestLast<CR>",    desc = "Run last test" },
      { "<leader>g", ":TestVisit<CR>",   desc = "Visit test file" },
    },
    dependencies = {
      {
        "preservim/vimux",
        lazy = true, -- Lazy load vimux
      },
    },
    config = function()
      vim.cmd("let test#strategy = 'vimux'")
    end,
  },
}
