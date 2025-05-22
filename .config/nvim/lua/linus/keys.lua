vim.g.mapleader = " "
vim.keymap.set('n', 's', 'l', { noremap = true }) -- t → rechts
vim.keymap.set("n", "<leader>w", "<CMD>write<CR>", 			{ desc = "write file" }, { silent = true })

-- local map = LazyVim.safe_keymap_set

vim.keymap.set("n", "<leader>z", "<cmd>NoNeckPain<cr>", 				{ desc = "NoNeckPain: zen" })
vim.keymap.set("n", "<leader>h", "<cmd>TransparentToggle<cr>", 			{ desc = "Transparency: toggle" })
vim.keymap.set("n", "<leader>u", ":ZenMode <CR>", { silent = true })

-- Setze die Navigationstasten auf die Bone-Positionen der ursprünglichen HJKL-Tasten

vim.cmd("set langmap=bh,nj,rk,sl,mb,lr")

-- ----x
--
--
--
-- vim.keymap.set("<leader>xx", "<cmd>TroubleToggle document_diagnostics<cr>", 	{ desc = "Document Diagnostics (Trouble)" })
-- vim.keymap.set("<leader>xX", "<cmd>TroubleToggle workspace_diagnostics<cr>", 	{ desc = "Workspace Diagnostics (Trouble)" })
-- vim.keymap.set("<leader>xL", "<cmd>TroubleToggle loclist<cr>", 			{ desc = "Open Location List (Trouble)" })
-- vim.keymap.set("<leader>xQ", "<cmd>TroubleToggle quickfix<cr>",  			{ desc = "Open Quickfix List (Trouble)" })
-- vim.keymap.set("gr", "<cmd>TroubleToggle lsp_references<cr>", 			{ desc = "LSP References (Trouble)" })
--
--
--
--
