-- leader key auf space
vim.g.mapleader = " "

-- Setze die Navigationstasten auf die Bone-Positionen der ursprünglichen HJKL-Tasten
-- vim.cmd("set langmap=bh,nj,rk,sl,mb,lr")

vim.keymap.set("n", "<leader>eu", ":ZenMode <CR>",           { desc = "zen mode" }, { silent = true })
vim.keymap.set("n", "<leader>ee", "<cmd>Neotree toggle float<CR>", { desc = "neotree toggle" }, { silent = true })
vim.keymap.set("n", "<leader>eE", "<cmd>Neotree focus float<CR>", { desc = "neotree focus" }, { silent = true })

vim.keymap.set("n", "<leader>qw", "<cmd>write<cr>", 		{ desc = "write" }, { silent = true })
vim.keymap.set("n", "<leader>qq", "<cmd>quit<cr>", 		    { desc = "quit" })
vim.keymap.set("n", "<leader>qg", "<cmd>wq<cr>", 		    { desc = "write and quit" })

vim.keymap.set("n", "<leader>r", "<cmd>redo<cr>", 		    { desc = "redo" })
vim.keymap.set("n", "<leader>,", ":", 		                { desc = "cmd mode" })


