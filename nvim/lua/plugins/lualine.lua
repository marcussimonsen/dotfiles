return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            tabline = {
                lualine_a = { 'buffers' },
                lualine_y = { 'tabs' },
                lualine_z = { "os.date('%a %H:%M:%S')"},
            }
        })
    end
}
