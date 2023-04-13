options = {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = require("user.plugins.options.neo-tree")
  },
  {
    "folke/tokyonight.nvim",
    opts = require("user.plugins.options.tokyonight")
  },
}

-- only use jk for better_escape because I don't like double bindings
require("better_escape").setup {
  mapping = { "jk" }
}
return options
