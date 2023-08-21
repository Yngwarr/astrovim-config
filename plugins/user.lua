return {
  {
    "tpope/vim-repeat",
    lazy = false
  },
  {
    "tpope/vim-dadbod",
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
    "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000
  },
  {
    "metalelf0/jellybeans-nvim",
    lazy = false,
    priority = 1000
  },
  {
    "carakan/new-railscasts-theme",
    lazy = false,
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
  },
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
    lazy = false,
    config = function()
      require('telescope').load_extension("live_grep_args")
    end
  },
  {
    "cappyzawa/trim.nvim",
    lazy = false,
    opts = {
      trim_last_line = false,
      trim_first_line = false
    }
  },
  {
    "https://gitlab.com/invertisment/conjure-clj-additions-cider-nrepl-mw",
    ft = { "clojure" },
  }
  -- -------- COLORSCHEME GRAVEYARD --------
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   lazy = false,
  --   priority = 1000
  -- },
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
  -- {
  --   "yazeed1s/minimal.nvim",
  --   lazy = false,
  --   priority = 1000
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
