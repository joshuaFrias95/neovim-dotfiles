return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("refactoring").setup({
      prompt_func_return_type = {
        go = true,
        java = true,
        cpp = true,
      },
      prompt_func_param_type = {
        go = true,
        java = true,
        cpp = true,
      },
      printf_statements = {
        go = true,
        java = true,
        cpp = true,
      },
      print_var_statements = {
        go = true,
        java = true,
        cpp = true,
      },
    })
  end,
}
