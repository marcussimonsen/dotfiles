local wk = require('which-key')

local telescope = require('telescope.builtin')
local trouble = require("trouble")
local treesj = require('treesj');
local minidiff = require('mini.diff')
local aerial = require('aerial')

wk.add({
    { "<Leader>a",  function() aerial.toggle({ focus = false }) end,                desc = "Aerial" },
    { "<Leader>e",  require("mini.files").open,                                     desc = "File Explorer" },
    { "<Leader>f",  group = "Telescope" },
    { "<Leader>fa", function() require("conform").format({
        async = true,
        vim.api.nvim_get_current_buf(),
    }) end, desc = "Format file or range" },
    { "<Leader>fb", telescope.buffers,                                              desc = "Buffers" },
    { "<Leader>fc", telescope.commands,                                             desc = "Commands" },
    { "<Leader>ff", telescope.find_files,                                           desc = "Find File" },
    { "<Leader>fg", telescope.live_grep,                                            desc = "Live Grep" },
    { "<Leader>fh", telescope.help_tags,                                            desc = "Help Tags" },
    { "<Leader>fp", telescope.colorscheme,                                          desc = "Colorscheme" },
    { "<Leader>fq", telescope.quickfix,                                             desc = "Quickfix" },
    { "<Leader>fr", telescope.oldfiles,                                             desc = "Recent Files" },
    { "<Leader>fs", require("telescope").extensions.aerial.aerial,                  desc = "Symbols (Aerial)" },
    { "<Leader>ft", telescope.treesitter,                                           desc = "Treesitter" },
    { "<Leader>g",  group = "MiniDiff" },
    { "<Leader>gd", minidiff.toggle_overlay,                                        desc = "Toggle Overlay" },
    { "<Leader>n",  function() vim.cmd("noh") end,                                  desc = "No highlight" },
    { "<Leader>s",  group = "TreeSJ" },
    { "<Leader>sj", treesj.join,                                                    desc = "Join" },
    { "<Leader>sr", function() treesj.toggle({ split = { recursive = true } }) end, desc = "Toggle Recursively" },
    { "<Leader>ss", treesj.split,                                                   desc = "Split" },
    { "<Leader>st", treesj.toggle,                                                  desc = "Toggle" },
    { "<Leader>t",  group = "Todo" },
    { "<Leader>tf", vim.cmd.TodoTelescope,                                          desc = "Todo Telescope" },
    { "<Leader>tt", vim.cmd.TodoTrouble,                                            desc = "Todo Trouble" },
    { "<Leader>v",  function() vim.cmd("vsplit") end,                               desc = "Vertical Split" },
    { "<Leader>x",  group = "Trouble" },
    { "<Leader>xd", function() trouble.toggle("document_diagnostics") end,          desc = "Document Diagnostics" },
    { "<Leader>xl", function() trouble.toggle("loclist") end,                       desc = "Loclist" },
    { "<Leader>xq", function() trouble.toggle("quickfix") end,                      desc = "Quickfix" },
    { "<Leader>xr", function() trouble.toggle("lsp_references") end,                desc = "LSP References" },
    { "<Leader>xw", function() trouble.toggle("workspace_diagnostics") end,         desc = "Workspace Diagnostics" },
    { "<Leader>xx", trouble.toggle,                                                 desc = "Toggle" },
})

-- Miscellaneous
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<C-q>', function() vim.cmd("bdelete") end)
vim.keymap.set('n', '<C-n>', function() vim.cmd("bnext") end)
vim.keymap.set('n', '<C-p>', function() vim.cmd("bprev") end)
vim.keymap.set('n', '<C-h>', function() vim.cmd("split") end)
vim.keymap.set('n', '<C-c>', ':LualineBuffersJump')
