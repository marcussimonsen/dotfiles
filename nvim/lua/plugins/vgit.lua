return {
    'tanvirtin/vgit.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        vim.o.updatetime = 1000
        vim.o.incsearch = false
        vim.wo.signcolumn = 'yes'
        require('vgit').setup({})
    end
}
