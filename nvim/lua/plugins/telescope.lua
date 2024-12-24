return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }
    },
    config = function ()
        require('telescope').setup({})
        require('telescope').load_extension('fzf')
    end,
    keys = {
        {
            "<leader>ff",
            "<cmd>Telescope find_files<CR>",
            mode = "n"
        },
    },
}
