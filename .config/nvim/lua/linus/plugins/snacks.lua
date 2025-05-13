-- lua/plugins/snacks.lua
return {
  -- Disable nvim-notify, since snacks.notifier will handle notifications
  { "rcarriga/nvim-notify", enabled = false },

  {
    "folke/snacks.nvim",
    lazy = false,    -- load snacks on startup (sets up global autocommands)
    priority = 1000, -- ensure it loads first
    opts = {
      bigfile      = { enabled = true },  -- better handling of large files
      indent       = { enabled = true },  -- indent guides and scope highlighting
      input        = { enabled = true },  -- improved vim.ui.input UI
      notifier     = { enabled = true },  -- pretty notifications (replaces vim.notify)
      quickfile    = { enabled = true },  -- faster file opening on startup
      scope        = { enabled = true },  -- scope-based buffer management
      scroll       = { enabled = true },  -- smooth scrolling
      statuscolumn = { enabled = true },  -- nicer status/number column
      words        = { enabled = true },  -- highlight and navigate word under cursor
      -- (Other snacks like explorer, dashboard, zen, etc. are left disabled to avoid overlap)
    },
  },
}

