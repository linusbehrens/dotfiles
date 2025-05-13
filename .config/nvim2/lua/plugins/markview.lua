-- ~/.config/nvim/lua/plugins/markview.lua
return {
  "OXY2DEV/markview.nvim",
  enabled = false,
  ft = { "markdown" }, -- load only in Markdown
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("markview").setup({
      latex = {
        enable = true,
        -- only inline math
        inline = { enable = true },
        -- disable block equations
        block = { enable = false },
        -- no extra bracket highlighting
        brackets = { enable = false },
      },
    })
  end,
}
