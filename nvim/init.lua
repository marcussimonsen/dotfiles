-- Set '<Leader>' key
vim.g.mapleader = ' '

require("core.lazy")
require("core.settings")
require("core.keymaps")

local time = os.date("*t")
if time.hour >= 19 or time.hour < 7 then
    vim.cmd.colorscheme "kanagawa-dragon"
else
    vim.cmd.colorscheme "kanagawa"
end
