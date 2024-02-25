-- see https://github.com/nvim-neo-tree/neo-tree.nvim/blob/v2.x/lua/neo-tree/defaults.lua for default config
return {
  close_if_last_window = true,     -- Close Neo-tree if it is the last window left in the tab
  window = {
    position = "float",            -- left, right, top, bottom, float, current
    popup = {
      -- settings that apply to float position only
      size = {
        height = "90%",
        width = "90%",
      },
      position = "50%",     -- 50% means center it
      border = "rounded"
      -- you can also specify border here, if you want a different setting from
    },
    mappings = {
      ["<esc>"] = "revert_preview",
      ["P"] = { "toggle_preview", config = { use_float = true } },
      ["l"] = "focus_preview",
      ["<2-LeftMouse>"] = "open_with_window_picker",
      ["<cr>"] = "open_with_window_picker",
      ["S"] = "split_with_window_picker",
      ["s"] = "vsplit_with_window_picker",
      ["t"] = "",
      ["w"] = "",
      ["C"] = "close_node",
      ["z"] = "close_all_nodes",
      ["Z"] = "expand_all_nodes",
      ["R"] = "refresh",
      ["a"] = {
        "add",
        -- some commands may take optional config options, see `:h neo-tree-mappings` for details
        config = {
          show_path = "relative",     -- "none", "relative", "absolute"
        }
      },
      ["A"] = { "add_directory",     -- also accepts the config.show_path and config.insert_as options.
        config = {
          show_path = "relative"
        }
      },
      ["d"] = "delete",
      ["r"] = "rename",
      ["y"] = "copy_to_clipboard",
      ["x"] = "cut_to_clipboard",
      ["p"] = "paste_from_clipboard",
      ["c"] = "copy",     -- takes text input for destination, also accepts the config.show_path and config.insert_as options
      ["m"] = "move",     -- takes text input for destination, also accepts the config.show_path and config.insert_as options
      ["e"] = "toggle_auto_expand_width",
      ["q"] = "close_window",
      ["?"] = "show_help",
      ["<"] = "prev_source",
      [">"] = "next_source",
    },
  },
  filesystem = {
    window = {
      mappings = {
        ["<esc>"] = "clear_filter",
        ["H"] = "toggle_hidden",
        ["/"] = "filter_as_you_type",     -- this was the default until v1.28
        ["D"] = "fuzzy_finder_directory",
        ["#"] = "fuzzy_sorter",           -- fuzzy sorting using the fzy algorithm
        ["f"] = "",
        ["<C-x>"] = "",
        ["<bs>"] = "navigate_up",
        ["."] = "set_root",
        ["[g"] = "prev_git_modified",
        ["]g"] = "next_git_modified",
      },
    },
    filtered_items = {
      visible = true,                            -- when true, they will just be displayed differently than normal items
      force_visible_in_empty_folder = false,     -- when true, hidden files will be shown if the root folder is otherwise empty
      show_hidden_count = true,                  -- when true, the number of hidden items in each folder will be shown as the last entry
      hide_hidden = true,                        -- only works on Windows for hidden files/directories
      hide_by_name = {

      },
      hide_by_pattern = {           -- uses glob style patterns
      },
      always_show = {               -- remains visible even if other settings would normally hide it
      },
      never_show = {                -- remains hidden even if visible is toggled to true, this overrides always_show
      },
      never_show_by_pattern = {     -- uses glob style patterns
      },
    },
    find_by_full_path_words = true,     -- `false` means it only searches the tail of a path.
    -- `true` will change the filter into a full path
    -- search with space as an implicit ".*", so
  },
  buffers = {
    window = {
      mappings = {
        ["<bs>"] = "navigate_up",
        ["."] = "set_root",
        ["bd"] = "buffer_delete",
      },
    },
  },
  git_status = {
    window = {
      mappings = {
        ["A"] = "git_add_all",
        ["gu"] = "git_unstage_file",
        ["ga"] = "git_add_file",
        ["gr"] = "git_revert_file",
        ["gc"] = "git_commit",
        ["gp"] = "git_push",
        ["gg"] = "git_commit_and_push",
      },
    },
  },
}
