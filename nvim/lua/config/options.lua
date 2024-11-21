-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Set 4-space tabs
opt.tabstop = 4 -- Number of visual spaces per TAB
opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true -- Convert tabs to spaces
opt.softtabstop = 4 -- Makes editing feel like 4-space tabs

-- Optionally, enable auto-indentation:
opt.smartindent = false
vim.g.autoformat = false
