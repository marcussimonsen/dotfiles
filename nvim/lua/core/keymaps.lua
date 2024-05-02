local wk = require('which-key')

local telescope = require('telescope.builtin')
local trouble = require("trouble")
local treesj = require('treesj');
local minidiff = require('mini.diff')

wk.register({
    c = {
        name = "Colorscheme",
        c = {
            l = { function() vim.cmd.colorscheme "catppuccin-latte" end, "Catppuccin Latte: Light" },
            f = { function() vim.cmd.colorscheme "catppuccin-frappe" end, "Catppuccin Frappe: Grey" },
            m = { function() vim.cmd.colorscheme "catppuccin-macchiato" end, "Catppuccin Macchiato: Normal" },
            o = { function() vim.cmd.colorscheme "catppuccin-mocha" end, "Catppuccin Mocha: Darker" },
        },
        k = {
            name = "Kanagawa",
            k = { function() vim.cmd.colorscheme "kanagawa-wave" end, "Kanagawa-wave" },
            d = { function() vim.cmd.colorscheme "kanagawa-dragon" end, "Kanagawa-dragon: Darker" },
            l = { function() vim.cmd.colorscheme "kanagawa-lotus" end, "Kanagawa-lotus: Light" },
        },
        t = {
            name = "Tokyonight",
            m = { function() vim.cmd.colorscheme "tokyonight-moon" end, "Tokyonight-moon: Default" },
            s = { function() vim.cmd.colorscheme "tokyonight-storm" end, "Tokyonight-storm: Lighter" },
            n = { function() vim.cmd.colorscheme "tokyonight-night" end, "Tokyonight-night: Darker" },
            d = { function() vim.cmd.colorscheme "tokyonight-day" end, "Tokyonight-day: Light" },
        },
    },
    e = { require('mini.files').open, "File Explorer" },
    f = { -- Telescope
        name = 'Telescope',
        f = { telescope.find_files, "Find File" },
        r = { telescope.oldfiles, "Recent Files" },
        g = { telescope.live_grep, "Live Grep" },
        b = { telescope.buffers, "Buffers" },
        h = { telescope.help_tags, "Help Tags" },
        c = { telescope.commands, "Commands" },
        q = { telescope.quickfix, "Quickfix" },
        t = { telescope.treesitter, "Treesitter" },
    },
    g = {
        name = "MiniDiff",
        d = { minidiff.toggle_overlay, "Toggle Overlay" },
    },
    n = { function() vim.cmd("noh") end, "No highlight" },
    s = {
        name = "TreeSJ",
        t = { treesj.toggle, "Toggle" },
        s = { treesj.split, "Split" },
        j = { treesj.join, "Join" },
        r = { function() treesj.toggle({ split = { recursive = true } }) end, "Toggle Recursively" }
    },
    t = {
        name = "Todo",
        t = { vim.cmd.TodoTrouble, "Todo Trouble" },
        f = { vim.cmd.TodoTelescope, "Todo Telescope" },
    },
    x = {
        name = "Trouble",
        x = { function() trouble.toggle() end, "Toggle" },
        w = { function() trouble.toggle("workspace_diagnostics") end, "Workspace Diagnostics" },
        d = { function() trouble.toggle("document_diagnostics") end, "Document Diagnostics" },
        q = { function() trouble.toggle("quickfix") end, "Quickfix" },
        l = { function() trouble.toggle("loclist") end, "Loclist" },
        r = { function() trouble.toggle("lsp_references") end, "LSP References" },
    },
}, { prefix = "<Leader>" })

-- Miscellaneous
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<C-w>', ':bdelete<CR>')
vim.keymap.set('n', '<C-n>', ':bnext<CR>')
vim.keymap.set('n', '<C-p>', ':bprev<CR>')
vim.keymap.set('n', '<C-h>', ':buffer')
