local wk = require('which-key')

local telescope = require('telescope.builtin')
local treesj = require('plugins.treesj')

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
        name = "TreeSJ",
        t = { "<cmd>TSJToggle<CR>", "TreeSJ Toggle" },
        s = { "<cmd>TSJSplit<CR>", "TreeSJ Split" },
        j = { "<cmd>TSJJoin<CR>", "TreeSJ Join" },
    }
}, { prefix = "<Leader>" })

-- Miscellaneous
vim.keymap.set('n', '<Leader>n', ':noh<CR>')
vim.keymap.set('i', 'jk', '<esc>')

-- Vimwiki
vim.keymap.set('n', '<Leader>vtt', ':VimwikiTable<CR>')
vim.keymap.set('n', '<Leader>vt ', ':VimwikiTable ')
