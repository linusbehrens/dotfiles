-- Snippet loader
-- https://github.com/L3MON4D3/LuaSnip
return {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    config = function()
        require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/linus/snippets/" })

        local ls = require("luasnip")
        -- vim.keymap.set({ "i", "s" }, "<C-c>", function()
        --     ls.setup({ enable_autosnippets = false })
        -- end, { silent = false })
        -- vim.keymap.set({ "i" }, "<Tab>", function() ls.expand() end, { silent = true })


        ls.config.setup({
            enable_autosnippets = true,
            region_check_events = 'InsertEnter',
            delete_check_events = 'InsertLeave'
        })
    end
}

-- keymaps:
-- $HOME/.config/nvim/lua/linus/keys.lua

-- snippets:
-- $HOME/.config/nvim/lua/linus/snippets
