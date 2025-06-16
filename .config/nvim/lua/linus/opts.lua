vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
vim.opt.spell = true
vim.opt.spelllang = { "en", "de" }
vim.opt.spellfile = vim.fn.expand("~/.config/nvim/spell/en.utf-8.add")
vim.opt.spellfile = vim.fn.expand("~/.config/nvim/spell/de.utf-8.add")

-------------------------------------------------------------

vim.opt.clipboard = "unnamedplus"

-------------------------------------------------------------

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = false
vim.opt.wrap = false

-------------------------------------------------------------

vim.opt.number = true
vim.opt.relativenumber = true

-------------------------------------------------------------

vim.opt.swapfile = false
vim.opt.backup = false

-------------------------------------------------------------

vim.opt.termguicolors = true

