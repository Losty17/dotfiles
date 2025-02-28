return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }
  },
  config = function ()
    require('telescope').setup({
      defaults = {
        file_ignore_patterns = { ".git/", "node_modules/", "*.stories.*" },
        -- `hidden = true` will still show the files if you use `:Telescope find_files hidden=true`
        hidden = true,
        -- no_ignore = false, -- Search in .gitignore
        case_mode = "smart_case",
      },
    })
    require('telescope').load_extension('fzf')
  end,
  keys = {
    {
      "<leader>ff",
      "<cmd>Telescope find_files<CR>",
      mode = "n"
    },
    {
      "<leader>fg",
      "<cmd>Telescope live_grep<CR>",
      mode = "n"
    },
    {
      "<leader>fb",
      "<cmd>Telescope buffers<CR>",
      mode = "n"
    },
    {
      "<leader>fh",
      "<cmd>Telescope help_tags<CR>",
      mode = "n"
    },
    {
      "gd",
      "<cmd>Telescope lsp_definitions<CR>",
      mode = "n"
    },
    {
      "gr",
      "<cmd>Telescope lsp_references<CR>",
      mode = "n"
    },
  },
}

