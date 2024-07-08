return {
    "lukas-reineke/indent-blankline.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    main = "ibl",
    opts = {
        scope = {
            enabled = true,
            show_start = true,
            show_end = false,
        },
    },
    config = function(_, opts)
        local ibl = require('ibl')
        ibl.setup(opts)
        vim.api.nvim_create_autocmd('FileType', {
            pattern = '*',
            callback = function()
                if vim.bo.filetype == 'dashboard' then
                    ibl.update({ enabled = false })
                else 
                    ibl.update({ enabled = true })
                end
            end
        })
    end,
}
