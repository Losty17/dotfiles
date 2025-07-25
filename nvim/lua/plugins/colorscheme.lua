return {
  -- "ficcdaf/ashen.nvim",
  -- "dgox16/oldworld.nvim",
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function ()
    require("catppuccin").setup({
      no_italic = true,
      term_colors = true,
      transparent_background = false,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      color_overrides = {
        mocha = {
          base = "#1e1e1e",
          mantle = "#171717",
          crust = "#1e1e1e",
        },
      },
      integrations = {
        telescope = {
          enabled = true,
          style = "nvchad",
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
      },
    })
    vim.cmd("colorscheme catppuccin")
  end
}
