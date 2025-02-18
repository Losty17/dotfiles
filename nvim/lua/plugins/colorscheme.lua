return {
  -- "ficcdaf/ashen.nvim",
  -- "dgox16/oldworld.nvim",
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function ()
    vim.cmd("colorscheme catppuccin-mocha")
  end
}
