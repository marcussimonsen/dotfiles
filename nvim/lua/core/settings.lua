-- Line number settings
vim.o.number = true
vim.o.relativenumber = true

-- Indentation settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Scroll before cursor reaches screen bounds
vim.o.scrolloff = 7

vim.cmd.colorscheme 'catppuccin'

-- Function to set options based on filetype
local set_filetype_options = function()
    local opt = vim.opt_local
    local filetype = vim.bo.filetype

    if filetype == "lua" then
        opt.tabstop = 4
        opt.shiftwidth = 4
        opt.expandtab = true
    elseif filetype == "python" then
        opt.tabstop = 4
        opt.shiftwidth = 4
        opt.expandtab = true
    elseif filetype == "c" then
        opt.tabstop = 2
        opt.shiftwidth = 2
        opt.expandtab = true
    elseif filetype == "cpp" then
        opt.tabstop = 2
        opt.shiftwidth = 2
        opt.expandtab = true
    elseif filetype == "java" then
        opt.tabstop = 4
        opt.shiftwidth = 4
        opt.expandtab = true
    elseif filetype == "markdown" then
        opt.colorcolumn = "80"
    elseif filetype == "haskell" then
        opt.tabstop = 2
        opt.shiftwidth = 2
        opt.expandtab = true
    end
end

-- Create an autocommand to run the function when a buffer with a certain filetype is opened
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = set_filetype_options,
})
