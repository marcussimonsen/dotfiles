-- Set '<Leader>' key
vim.g.mapleader = ' '

require("core.lazy")
require("core.settings")
require("core.keymaps")

vim.cmd.colorscheme "kanagawa"
