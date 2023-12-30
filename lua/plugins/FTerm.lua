return {
  "numToStr/FTerm.nvim",
  lazy = false,
  config = function()
    require("FTerm").setup({
      border = "single",
      dimensions = {
        height = 0.9,
        width = 0.9,
        x = 0.5,
        y = 0.5,
        3,
      },
    })
  end,
}
