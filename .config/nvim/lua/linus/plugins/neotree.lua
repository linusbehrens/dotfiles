return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      hijack_netrw_behavior = "open_current", -- Keeps Neo-tree from opening automatically
      window = {
        position = "float",
        width = 30,
      },
    },
    event_handlers = {
      {
        event = "file_opened",
        handler = function()
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
  },
  keys = {
    { "<leader>e", "<cmd>Neotree toggle float<cr>", desc = "Toggle File Explorer (Float)" },
    { "<leader>E", "<cmd>Neotree focus float<cr>", desc = "Focus File Explorer" },
  },
}
