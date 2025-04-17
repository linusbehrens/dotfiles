return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    keywords = {
      FIX = {
        icon = " ", -- icon used for the sign, and in search results
        color = "error", -- can be a hex color, or a named color (see below)
        alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
        -- signs = false, -- configure signs for some keywords individually
      },
      TODO = { icon = " ", color = "info" },
      HACK = { icon = " ", color = "warning" },
      WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
      PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
      NOTE = { icon = " ", color = "hint", alt = { "INFO" } },

      --  FIX:  Test
      --  TODO: Test
      --  HACK: Test
      --  WARN: Test
      --  PERF: Test
      --  NOTE: Test
      --  TEST: Test

      HERLEITUNG = { icon = "󰧆", color = "#cfcfcf" },
      UEBEN = { icon = "", color = "warning" },
      LERNEN = { icon = "󰑖", color = "info" },
      RESEARCH = { icon = "", color = "hint" },
      ANKI = { icon = "", color = "#9654b0" },
      WTF = { icon = "", color = "error", alt = { "WARNING", "XXX" } },
      ARNECKE = { icon = "󰑴", color = "#ffa3f1", alt = { "WARNING", "XXX" } },

      --  HERLEITUNG: Test
      --  UEBEN:      Test
      --  LERNEN:     Test
      --  RESEARCH:   Test
      --  ANKI:       Test
      --  WTF:        Test
      --  ARNECKE:    Test
    },

    highlight = {
      multiline = true, -- enable multine todo comments
      comments_only = false, -- uses treesitter to match keywords in comments only
      max_line_len = 400, -- ignore lines longer than this
    },
  },
}
