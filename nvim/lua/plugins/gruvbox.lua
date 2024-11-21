-- ~/.config/nvim/lua/plugins/gruvbox.lua
return {
  "ellisonleao/gruvbox.nvim",
  lazy = false, -- Load immediately
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme gruvbox]])
  end,
}
