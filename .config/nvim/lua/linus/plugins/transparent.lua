-- lua/plugins/transparent.lua
return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,  -- load immediately to apply transparency
    opts = {
      extra_groups = {
        "NormalFloat",       -- make floating windows transparent
        "NeoTreeNormal",     -- neo-tree window
        "NeoTreeNormalNC",   -- neo-tree (no focus)
      },
      exclude_groups = {},   -- no exclusions, all backgrounds cleared
    },
  },
}

