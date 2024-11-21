return {
    "folke/tokyonight.nvim",
    lazy = false, -- Ensure the colorscheme is loaded on startup
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "moon", -- Available styles: night, storm, day
            transparent = false, -- No transparency
            terminal_colors = true, -- Match terminal colors
        })
        vim.cmd("colorscheme tokyonight") -- Set the colorscheme
    end,
}
