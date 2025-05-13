-- lua/plugins/telescope.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    version = "*",
    cmd = "Telescope",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
          },
        },
      },
    },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files theme=dropdown<cr>", desc = "Find Files" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find in Files (Grep)" },
      { "<leader>fw", "<cmd>Telescope grep_string<cr>", desc = "Find Word Under Cursor" },
      { "<leader>ft", "<cmd>Telescope grep_string search=TODO<cr>", desc = "Find TODO/FIXME" },
    {"<leader><space>", "<cmd>Telescope find_files<cr>", { desc = "Find Files" }}
    },
  },
}
