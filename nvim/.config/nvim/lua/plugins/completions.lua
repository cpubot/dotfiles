return {
  -- Completion source for LSP
  {
    "hrsh7th/cmp-nvim-lsp",
    lazy = true,
    event = "InsertEnter",
  },

  -- LuaSnip and related plugins
  {
    "L3MON4D3/LuaSnip",
    lazy = true,
    event = "InsertEnter",
    dependencies = {
      {
        "saadparwaiz1/cmp_luasnip",
        lazy = true,
      },
      {
        "rafamadriz/friendly-snippets",
        lazy = true,
        config = function()
          require("luasnip.loaders.from_vscode").lazy_load()
        end,
      },
    },
  },

  -- nvim-cmp (Main Completion Plugin)
  {
    "hrsh7th/nvim-cmp",
    lazy = true,
    event = "InsertEnter",
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },
}
