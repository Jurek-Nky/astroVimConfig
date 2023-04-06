opts_list = {
  float_exit_term = function(cmd)
    return {
      cmd = cmd,            -- command to execute when creating the terminal e.g. 'top'
      direction = "float",  -- the layout for the terminal, same as the main config options
      close_on_exit = true, -- close the terminal window when the process exits
      float_opts = {
        border = 'rounded', -- like `size`, width and height can be a number or function which is passed the current terminal
      }
    }
  end,
  float_pause_term = function(cmd)
    return {
      cmd = cmd,             -- command to execute when creating the terminal e.g. 'top'
      direction = "float",   -- the layout for the terminal, same as the main config options
      close_on_exit = false, -- close the terminal window when the process exits
      float_opts = {
        border = 'rounded',  -- like `size`, width and height can be a number or function which is passed the current terminal
      }
    }
  end,
}
return opts_list
