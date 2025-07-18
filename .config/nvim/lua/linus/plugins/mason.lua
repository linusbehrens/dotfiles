-- https://github.com/mason-org/mason.nvim

-- ~/.config/nvim/lua/plugins/mason.lua
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "tsserver",
        },
        automatic_installation = true,
      })

      local lspconfig = require("lspconfig")

      -- Example: configure LSP servers here
      local servers = { "lua_ls", "pyright", "tsserver" }
      for _, server in ipairs(servers) do
        lspconfig[server].setup({})
      end
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim", -- formerly "jose-elias-alvarez/null-ls.nvim"
    },
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = {
          "prettier",
          "stylua",
          "black",
        },
        automatic_installation = true,
      })

      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.black,
        },
      })
    end,
  },
}
