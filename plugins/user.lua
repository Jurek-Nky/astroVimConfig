options = {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = require("user.plugins.options.neo-tree")
  },
  {
    "tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    }
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
  {
    "kelly-lin/ranger.nvim",
    lazy = false,
    opts = require("user.plugins.options.ranger")
  },


  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false
  -- }
  --   {
  --   "kelly-lin/ranger.nvim",
  --   config = function()
  --     require("ranger-nvim").setup({ replace_netrw = true })
  --     vim.api.nvim_set_keymap("n", "<leader>ef", "", {
  --       noremap = true,
  --       callback = function()
  --         require("ranger-nvim").open(true)
  --       end,
  --     })
  --   end,
  -- }
}
return options
