return {
    'nvim-focus/focus.nvim',
    version = false,
    config = function ()
        require('focus').setup({
            ui = {
                cursorline = false,
            }
        })
    end
}
