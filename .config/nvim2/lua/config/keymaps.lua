-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- NoNeckPain
--

local map = LazyVim.safe_keymap_set

map("n", "<leader>z", "<cmd>NoNeckPain<cr>", { desc = "NoNeckPain: zen" })
map("n", "<leader>h", "<cmd>TransparentToggle<cr>", { desc = "Transparency: toggle" })
