return {
    'stevearc/aerial.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons',
        'nvim-telescope/telescope.nvim',
    },
    config = function()
        require('aerial').setup({
            close_automatic_events = { 'unsupported' },
            open_automatic = false,
        })
        require('telescope').load_extension('aerial')
    end
}
