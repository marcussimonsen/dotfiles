return {
    'stevearc/aerial.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons',
        'nvim-telescope/telescope.nvim',
    },
    lazy_load = true,
    config = function()
        require('aerial').setup({
            close_automatic_events = { 'unsupported' },
            open_automatic = false,
            autojump = true,
            filter_kind = false,
        })
        require('telescope').load_extension('aerial')
    end
}
