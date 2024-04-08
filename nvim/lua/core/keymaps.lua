local wk = require('which-key')

local telescope = require('telescope.builtin')
local trouble = require("trouble")
local treesj = require('treesj');

wk.register({
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
vim.keymap.set('n', '<Leader>n', ':noh<CR>')
vim.keymap.set('i', 'jk', '<esc>')

-- Oil
vim.keymap.set('n', '-', require('mini.files').open, { desc = "Mini.files" })
