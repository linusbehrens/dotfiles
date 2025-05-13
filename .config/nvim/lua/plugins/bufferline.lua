-- ~/.config/nvim/lua/plugins/catppuccin.lua
return {
  -- 1. Add the Catppuccin colourscheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- load first to avoid a flash of default colours
    lazy = false, -- start with Neovim, not on demand
    opts = {
      flavour = "mocha", -- latte | frappe | macchiato | mocha
      transparent_background = false,
      integrations = {
        cmp = true,
        telescope = { enabled = true },
        treesitter = true,
        which_key = true,
        -- add/remove integrations as you like
      },
    },
  },

  -- 2. Tell LazyVim to *use* that colourscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

-- return {
--   -- add gruvbox
--   { "ellisonleao/gruvbox.nvim" },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox",
--     },
--   },
-- }
