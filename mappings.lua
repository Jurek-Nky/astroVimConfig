local utils = require "astronvim.utils"
local maps = { n = {}, v = {}, i = {}, t = {} }
-- ############################
-- general 
-- ############################
-- rebinding quit key to force quit
maps.n["qf"] = { "<cmd>q!<cr>", desc = "force quit" }
maps.n["qq"] = { "<cmd>q<cr>", desc = "quit" }
-- ############################
-- buffers
-- ############################
maps.n["<leader>bD"] = {
  function()
    require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
      require("astronvim.utils.buffer").close(
        bufnr)
    end)
  end,
  desc = "Pick to close",
}
