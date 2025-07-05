return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = { enabled = false },  -- we'll use cmp instead
      panel = { enabled = false },
    })
  end,
}
