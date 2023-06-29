return {
  {
    "tpope/vim-repeat",
    lazy = false
  },
  {
    "yngwarr/vim-sexp",
    lazy = false
  },
  {
    "sheerun/vim-polyglot",
    lazy = false
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "chrisbra/NrrwRgn",
    lazy = false
  },
  {
    "emmanueltouzery/agitator.nvim",
    lazy = false,
  },
  {
    "petertriho/cmp-git",
    lazy = false,
    config = function()
      require("cmp").setup.filetype({ "gitcommit" }, { sources = { { name = "git" } }})
      require("cmp_git").setup()
    end,
  },
  {
    "cwebster2/github-coauthors.nvim",
    lazy = false,
    config = function()
      require('telescope').load_extension('githubcoauthors')
    end
  }
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   lazy = false,
  --   priority = 1000
  -- },
  -- {
  --   "rktjmp/lush.nvim",
  --   lazy = false
  -- },
  -- {
  --   "mcchrish/zenbones.nvim",
  --   lazy = false
  -- },
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
