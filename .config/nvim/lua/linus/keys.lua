-- leader key auf space
vim.g.mapleader = " "

-- vim.cmd("set langmap=bh,nj,rk,sl,mb,lr")

-- $HOME/.config/nvim/lua/linus/plugins/zen-mode.lua
vim.keymap.set("n", "<leader>eu", ":ZenMode <CR>",                                  { desc = "zen mode" }, { silent = true })
-- $HOME/.config/nvim/lua/linus/plugins/neotree.lua
vim.keymap.set("n", "<leader>ee", "<cmd>Neotree toggle float<CR>",                  { desc = "neotree toggle" }, { silent = true })
vim.keymap.set("n", "<leader>eE", "<cmd>Neotree focus float<CR>",                   { desc = "neotree focus" }, { silent = true })
-- netrw
vim.keymap.set("n", "<leader>nn", vim.cmd.Ex,                                       { desc = "open netrw" })
-- write and quit
vim.keymap.set("n", "<leader>qw", "<cmd>write<cr>", 		                        { desc = "write" }, { silent = true })
vim.keymap.set("n", "<leader>qq", "<cmd>quit<cr>", 		                            { desc = "quit" })
vim.keymap.set("n", "<leader>qg", "<cmd>wq<cr>", 		                            { desc = "write and quit" })
-- redo
vim.keymap.set("n", "<leader>r", "<cmd>redo<cr>", 		                            { desc = "redo" })
-- cmd
vim.keymap.set("n", "<leader>,", "<cmd>e $HOME/.config/nvim/lua/linus",             { desc = "cmd mode" })
-- $HOME/.config/nvim/lua/linus/plugins/telescope.lua
vim.keymap.set("n", "<leader><space>", "<cmd>Telescope find_files<cr>",             { desc = "Find files" })
vim.keymap.set("n", "<leader>en", "<cmd>Telescope find_files theme=dropdown<cr>",   { desc = "Find file names" })
vim.keymap.set("n", "<leader>er", "<cmd>Telescope oldfiles<cr>",                    { desc = "Find recent files" })
vim.keymap.set("n", "<leader>es", "<cmd>Telescope live_grep<cr>",                   { desc = "grep files string" })
vim.keymap.set("n", "<leader>ew", "<cmd>Telescope grep_string<cr>",                 { desc = "Find word under coursor" })
vim.keymap.set("n", "<leader>et", "<cmd>Telescope grep_string search=TODO<cr>",     { desc = "Find TODO" })
-- $HOME/.config/nvim/lua/linus/plugins/undotree.lua
vim.keymap.set("n", "<leader>u", "vim.cmd.UndotreeToggle",                          { desc = "Toggle undo tree" })
-- $HOME/.config/nvim/lua/linus/plugins/eyeliner.lua
vim.keymap.set("n", "<leader>ey", "vim.cmd.EyelinerToggle",                          { desc = "Toggle autocompletion (eyeliner)" })
-- $HOME/.config/nvim/lua/linus/plugins/luasnip.lua
vim.keymap.set({ "i" }, "<C-e>", function() ls.expand() end, { silent = true})
vim.keymap.set({ "i", "s" }, "<C-J>", function() ls.jump(1) end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-K>", function() ls.jump(-1) end, { silent = true })


