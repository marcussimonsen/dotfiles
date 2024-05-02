-- Set '<Leader>' key
vim.g.mapleader = ' '

require("core.lazy")
require("core.settings")
require("core.keymaps")

local time = os.date("*t")
if time.hour >= 17 or time.hour < 7 then
    vim.cmd.colorscheme "tokyonight-night"
else
    vim.cmd.colorscheme "tokyonight-moon"
end
