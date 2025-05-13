-- ~/.config/nvim/lua/plugins/softwrap.lua
return {
  -- Das ist ein Dummy-Eintrag, damit LazyVim ihn lädt
  -- Du kannst stattdessen auch ein echtes Plugin hier rein tun, wenn du willst.
  -- Aber dieser Configblock funktioniert ohne Plugin!
  "nvim-lua/plenary.nvim", -- oder irgendein vorhandenes Plugin als Träger
  config = function()
    local function toggle_wrap()
      local enabled = vim.wo.wrap
      vim.wo.wrap = not enabled
      vim.wo.linebreak = not enabled
      vim.wo.breakindent = not enabled
      if not enabled then
        vim.notify("Soft wrap enabled", vim.log.levels.INFO)
      else
        vim.notify("Soft wrap disabled", vim.log.levels.INFO)
      end
    end

    -- Autocommand für bestimmte Dateitypen
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "markdown", "tex", "text", "plaintex" },
      callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
        vim.opt_local.breakindent = true
      end,
    })

    -- Toggle auf <leader>z
    vim.keymap.set("n", "<leader>t", toggle_wrap, { desc = "Toggle soft wrap" })
  end,
}
