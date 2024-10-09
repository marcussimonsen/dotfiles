return {
  "folke/neodev.nvim",
  opts = {},
  event = "BufRead",
  config = function()
    require("neodev").setup({})
  end
}
