-- $HOME/.config/nvim/lua/linus/plugins/telescope.lua
return {
  
    "nvim-telescope/telescope.nvim",
    version = "*",
    cmd = "Telescope",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        defaults = {
            mappings = {
                i = {
                    -- ["<C-j>"] = require("telescope.actions").move_selection_next,
                    -- ["<C-k>"] = require("telescope.actions").move_selection_previous,
                },
            },
        },
    },
}

-- keymaps:
-- $HOME/.config/nvim/lua/linus/keys.lua
