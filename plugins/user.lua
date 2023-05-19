options = {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = require("user.plugins.options.neo-tree")
  },
  {
    "folke/tokyonight.nvim",
    opts = require("user.plugins.options.tokyonight")
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertCharPre",
    opts = {
      timeout = 300,
      mapping = { "jk" }
    }
  },
  {
    "mg979/vim-visual-multi",
    lazy = false
  }
}
return options
