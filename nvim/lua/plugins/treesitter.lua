return {
    'nvim-treesitter/nvim-treesitter',
    build = function()
        require('nvim-treesitter.install').update({ with_sync = true })()
    end,
    opts = {
        ensure_installed = { "typescript", "javascript", "python", "lua", "markdown" },
        sync_install = false,
        auto_install = false,
        highlight = {
            enable = true,
        }
    }
}
