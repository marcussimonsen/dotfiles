local wk = require('which-key')

local telescope = require('telescope.builtin')
local trouble = require("trouble")
local treesj = require('treesj');

wk.register({
    c = {
        name = "Colorscheme",
        t = {
            name = "Tokyonight",
            m = { function() vim.cmd.colorscheme "tokyonight-moon" end, "Tokyonight-moon: Default" },
            s = { function() vim.cmd.colorscheme "tokyonight-storm" end, "Tokyonight-storm: Lighter" },
            n = { function() vim.cmd.colorscheme "tokyonight-night" end, "Tokyonight-night: Darker" },
            d = { function() vim.cmd.colorscheme "tokyonight-day" end, "Tokyonight-day: Light" },
        },
        k = {
            name = "Kanagawa",
            k = { function() vim.cmd.colorscheme "kanagawa-wave" end, "Kanagawa-wave" },
            d = { function() vim.cmd.colorscheme "kanagawa-dragon" end, "Kanagawa-dragon: Darker" },
            l = { function() vim.cmd.colorscheme "kanagawa-lotus" end, "Kanagawa-lotus: Light" },
        }
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
    g = { -- Fugitive
        name = "Git (Fugitive)",
        d = { "<cmd>Gdiffsplit<CR>", "Git Diff Split" },
        g = { "<cmd>Git<CR>", "Git Summary" },
    },
    n = { function() vim.cmd("noh") end, "No highlight"},
    t = {
        name = "Todo",
        t = { "<cmd>TodoTrouble<CR>", "Todo Trouble" },
        f = { "<cmd>TodoTelescope<CR>", "Todo Telescope" },
    },
    s = {
        name = "TreeSJ",
        t = { treesj.toggle, "Toggle" },
        s = { treesj.split, "Split" },
        j = { treesj.join, "Join" },
        r = { function() treesj.toggle({ split = { recursive = true } }) end, "Toggle Recursively" }
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
