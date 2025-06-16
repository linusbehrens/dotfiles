-- lua/plugins/neo-tree.lua
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",  -- file icons
      "MunifTanjim/nui.nvim",
    },
    opts = {
      filesystem = {
        follow_current_file = true,  -- sync tree with open file
        use_libuv_file_watcher = true,
      },
      window = {
        position = "float",
        width = 40,
      },
      default_component_configs = {
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
        },
        modified = { symbol = "●" },
        git_status = {
          symbols = {
            added    = "+",  -- new file
            modified = "~",  -- modified file
            deleted  = "✖",  -- deleted file
            renamed  = "➜",
            unstaged = "★",
          },
        },
      },
    },
  },
}

