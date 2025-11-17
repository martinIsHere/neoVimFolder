return {
  "echasnovski/mini.surround",
  version = "*",
  config = function()
    require("mini.surround").setup({
      mappings = {
        add = "gs",      -- Add surround
        delete = "dgs",   -- Delete surround
        replace = "cgs",  -- Replace surround
        find = "",       -- Disable default find
        highlight = "",  -- Disable default highlight
      },
})
  end,
}
