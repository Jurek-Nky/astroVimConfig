local utils = require "astronvim.utils"
local maps = { n = {}, v = {}, i = {}, t = {} }
-- ############################
-- general
-- ############################
-- extend the find word in all files command, to also follow symlinks
maps.n["<leader>fW"] = {
  function()
    require("telescope.builtin").live_grep {
      additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore", "-L" }) end,
    }
  end,
  desc = "Find words in all files",
}
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
-- keybind to open bash terminal
maps.n["<leader>tb"] = {
  function() utils.toggle_term_cmd(term_opts.float_pause_term("bash")) end,
  desc = "Floating Bash shell"
}
-- keybind to generate PDF using typst
local typst = vim.fn.executable "typst" == 1 and "typst"
if typst then
  maps.n["<leader>tt"] = {
    function() utils.toggle_term_cmd(term_opts.float_exit_term("typst compile main.typ")) end,
    desc = "Typst compile main.typ"
  }
end
-- keybind for neofetch terminal
local neofetch = vim.fn.executable "neofetch" == 1 and "neofetch"
if neofetch then
  maps.n["<leader>tn"] = {
    function() utils.toggle_term_cmd(term_opts.float_pause_term("neofetch")) end,
    desc = "ToggleTerm neofetch"
  }
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
-- keybind for lazygit dotfiles
local lazygit = vim.fn.executable "lazygit" == 1 and "lazygit"
if lazygit then
  maps.n["<leader>gC"] = {
    function() utils.toggle_term_cmd(term_opts.float_exit_term("lazygit --git-dir=$HOME/.cfg --work-tree=$HOME")) end,
    desc = "lazygit for dotfiles"
  }
end
-- unmapping double lazygit key. main lazygit key is <leader>gg
maps.n["<leader>tl"] = false

local ranger = vim.fn.executable "ranger" == 1 and "ranger"
if ranger then
  maps.n["<leader>r"] = {
    function()
      require("ranger-nvim").open(true)
    end,
    desc = "open Ranger file manager"
  }
end

return maps
