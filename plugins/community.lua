return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  { import = "astrocommunity.motion.nvim-surround" },

  -- { import = "astrocommunity.pack.clojure" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  -- { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.html-css" },
  -- { import = "astrocommunity.pack.java" },
}
