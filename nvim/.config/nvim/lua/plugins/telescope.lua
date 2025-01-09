return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    lazy = true,       -- Lazy load telescope
    cmd = "Telescope", -- Also load with :Telescope
    keys = {
      { "<C-p>",            ":Telescope find_files<CR>", desc = "Find files" },
      { "<leader>fg",       ":Telescope live_grep<CR>",  desc = "Live grep" },
      { "<leader><leader>", ":Telescope buffers<CR>",    desc = "List buffers" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
          require("telescope").load_extension("ui-select")
        end,
      },
    },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
    end,
  },
}
