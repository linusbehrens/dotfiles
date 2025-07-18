-- $HOME/.config/nvim/lua/linus/plugins/zen-mode.lua
return {
  "folke/zen-mode.nvim",
  opts = {
    border = "none",
    zindex = 40,
    window = {
      backdrop = 0.95,
      width = 100,
      height = 1,
      options = {
        -- signcolumn = "no",
        -- number = false,
        -- relativenumber = false,
        -- cursorline = false,
        -- cursorcolumn = false,
        -- foldcolumn = "0",
        -- list = false,
      },
    },
    plugins = {
      options = {
        enabled = true,
        ruler = false,
        showcmd = false,
      },
      twilight = { enabled = true },
      gitsigns = { enabled = false },
      tmux = { enabled = false },
      diagnostics = { enabled = false },
      todo = { enabled = false },
      neovide = {
        enabled = false,
        scale = 1.2,
        disable_animations = {
          neovide_animation_length = 0,
          neovide_cursor_animate_command_line = false,
          neovide_scroll_animation_length = 0,
          neovide_position_animation_length = 0,
          neovide_cursor_animation_length = 0,
          neovide_cursor_vfx_mode = "",
        },
      },
    },
    on_open = function(win)
      -- Beispiel: vim.wo[win].wrap = true
        vim.wo[win].wrap = true
    end,
    on_close = function() end,
  },
}
-- keymaps
-- $HOME/.config/nvim/lua/linus/keys.lua
