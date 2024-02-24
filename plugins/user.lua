options = {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = require("user.plugins.options.neo-tree")
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = require("user.plugins.options.tokyonight")
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    -- opts = require("user.plugins.options.catppuccin")
  },
  {
    "sainnhe/everforest",
    lazy = false,
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertCharPre",
    opts = {
      timeout = 300,
      mapping = { "jk" }
    }
  },
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false
  -- }
}
return options
