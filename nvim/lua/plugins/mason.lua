return {
    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = { 'williamboman/mason.nvim' },
        config = function()
            require("mason").setup({})
            require("mason-lspconfig").setup({
                ensure_installed = { 'lua_ls', 'ts_ls', 'pyright' },
                handlers = {
                    function(server_name)
                        require('lspconfig')[server_name].setup({})
                    end,
                }
            })
        end,
    }
}
