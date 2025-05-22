return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitute = require("substitute")

    substitute.setup()

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    vim.keymap.set("n", "z", substitute.operator, { desc = "Substitute with motion" })
    vim.keymap.set("n", "zz", substitute.line, { desc = "Substitute line" })
    vim.keymap.set("n", "Z", substitute.eol, { desc = "Substitute to end of line" })
    vim.keymap.set("x", "z", substitute.visual, { desc = "Substitute in visual mode" })
  end,
}
