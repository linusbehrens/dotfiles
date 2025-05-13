-- lua/plugins/which-key.lua
return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",  -- load which-key after other plugins/modules
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 800   -- time to wait for key sequence (ms)
    end,
    opts = {
      plugins = { spelling = true },  -- show spelling suggestions in which-key
      win = { border = "single", },
    },
  },
}

