local wk = require('which-key')

local telescope = require('telescope.builtin')

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
    }
}, { prefix = "<Leader>" })

-- Generic
vim.keymap.set('n', '<Leader>n', ':noh<CR>')

-- Vimwiki
vim.keymap.set('n', '<Leader>vtt', ':VimwikiTable<CR>')
vim.keymap.set('n', '<Leader>vt ', ':VimwikiTable ')
