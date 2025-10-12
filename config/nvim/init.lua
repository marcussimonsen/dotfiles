-- Set '<Leader>' key
vim.g.mapleader = " "

require("core.lazy")
require("core.settings")
require("core.keymaps")
require("core.commands")

vim.lsp.enable({ "lua_ls", "clangd", "texlab", "pylsp", "marksman", "jdtls", "sqlls", "fsautocomplete", "cssls", "bashls",
    "hls", "gopls", "hyprls" })

-- Allow project-local .nvimrc or .exrc files
vim.opt.exrc = true
-- Prevent unsafe commands from running automatically
vim.opt.secure = true

-- Use the following to change to darker theme at night
-- local time = os.date("*t")
-- if time.hour >= 17 or time.hour < 7 then
-- 	vim.cmd.colorscheme("tokyonight-night")
-- else
-- 	vim.cmd.colorscheme("tokyonight-moon")
-- end
