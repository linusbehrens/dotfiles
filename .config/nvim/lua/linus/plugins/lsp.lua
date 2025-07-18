return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {
        "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        }
    },

    config = function()
        -- require("lspconfig").lua_ls.setup()
        vim.lsp.enable("html-lsp")
        vim.lsp.enable("lua_ls")
        -- require("mason").setup()
        -- require("mason-lspconfig").setup({
        --     automatic_installation = true,
        --     ensure_installed = {
        --         "lua_ls",
        --         "rust_analyzer",
        --         "html-lsp",
        --         "clangd",
        --         "tinymist",
        --     },
        --     
        -- })
        -- local l = vim.lsp
    end,
}
