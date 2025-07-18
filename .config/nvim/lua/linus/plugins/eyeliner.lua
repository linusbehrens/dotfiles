-- Auto completion
return {
    'jinh0/eyeliner.nvim',
    config = function()
        require'eyeliner'.setup {
            -- show highlights only after keypress
            highlight_on_key = true,
        }
    end,
}

-- Keymap
-- EyelinerToggle
-- /Users/linus/.config/nvim/lua/linus/keys.lua
