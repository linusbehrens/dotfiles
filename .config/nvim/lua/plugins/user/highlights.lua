vim.api.nvim_create_augroup("TransparentBackground", { clear = true })
vim.api.nvim_create_autocmd("ColorScheme", {
  group = "TransparentBackground",
  callback = function()
    -- Remove the background from Normal text and floating windows
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    -- Optionally, remove background from other UI elements
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
  end,
})
