return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        colorscheme = "catppuccin",
        flavour = "mocha",
        styles = {
          comments = { "italic" },
        },
      })
    end,
  },
}
