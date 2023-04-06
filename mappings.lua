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
-- ############################
-- ToggleTerm
-- ############################
local term_opts = require("user.plugins.options.toggleterm")
-- keybind for neofetch terminal
local neofetch = vim.fn.executable "neofetch" == 1 and "neofetch"
if neofetch then
  maps.n["<leader>tn"] = {
    function() utils.toggle_term_cmd(term_opts.float_pause_term("neofetch")) end,
    desc = "ToggleTerm neofetch"
  }
else
  maps.n["<leader>tn"] = false -- unbinding astros default mapping for node
end
-- rebind python terminal to always open floating window
local python = vim.fn.executable "python" == 1 and "python" or vim.fn.executable "python3" == 1 and "python3"
if python then
  maps.n["<leader>tp"] = {
    function() utils.toggle_term_cmd(term_opts.float_exit_term("python")) end,
    desc = "ToggleTerm python"
  }
end
-- keybind for htop terminal
local htop = vim.fn.executable "htop" == 1 and "htop"
if htop then
  maps.n["<leader>tH"] = {
    function() utils.toggle_term_cmd(term_opts.float_exit_term("htop")) end,
    desc = "ToggleTerm htop"
  }
end

return maps
