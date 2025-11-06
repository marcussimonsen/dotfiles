return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	cmd = "FzfLua",
	keys = {
        {
            "<Leader>s<CR>",
            mode = "n",
            function ()
                require("fzf-lua").resume()
            end,
            desc = "Fzf resume",
        },
		{
			"<Leader>s<Leader>",
			mode = "n",
			function()
				require("fzf-lua").builtin()
			end,
			desc = "Fzf Commands",
		},
		{
			"<Leader>sb",
			mode = "n",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "Buffers",
		},
		{
			"<Leader>sc",
			mode = "n",
			function()
				require("fzf-lua").changes()
			end,
			desc = "Changes",
		},
		{
			"<Leader>sC",
			mode = "n",
			function()
				require("fzf-lua").commands()
			end,
			desc = "Commands",
		},
        {
            "<Leader>se",
            mode = "n",
            function ()
                require("fzf-lua").diagnostics_workspace()
            end,
            desc = "Workspace Diagnostics",
        },
		{
			"<Leader>sf",
			mode = "n",
			function()
				require("fzf-lua").files()
			end,
			desc = "Find File",
		},
		{
			"<Leader>sg",
			mode = "n",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "Live Grep",
		},
		{
			"<Leader>sG",
			mode = "n",
			function()
				require("fzf-lua").grep()
			end,
			desc = "Grep",
		},
		{
			"<Leader>sk",
			mode = "n",
			function()
				require("fzf-lua").keymaps()
			end,
			desc = "Keymaps",
		},
		{
			"<Leader>sh",
			mode = "n",
			function()
				require("fzf-lua").helptags()
			end,
			desc = "Help Tags",
		},
		{
			"<Leader>sm",
			mode = "n",
			function()
				require("fzf-lua").marks()
			end,
			desc = "Marks",
		},
		{
			"<Leader>sq",
			mode = "n",
			function()
				require("fzf-lua").quickfix()
			end,
			desc = "Quickfix",
		},
		{
			"<Leader>st",
			mode = "n",
			function()
				require("fzf-lua").treesitter()
			end,
			desc = "Treesitter",
		},
		{
			"<Leader>sd",
			mode = "n",
			function()
				require("fzf-lua").lsp_document_symbols()
			end,
			desc = "LSP Document Symbols",
		},
		{
			"<Leader>sw",
			mode = "n",
			function()
				require("fzf-lua").lsp_workspace_symbols()
			end,
			desc = "LSP Document Symbols",
		},
		{
			"<Leader>sl",
			mode = "n",
			function()
				require("fzf-lua").loclist()
			end,
			desc = "Loclist",
		},
		{
			"<Leader>sw",
			mode = "n",
			function()
				require("fzf-lua").grep_cword()
			end,
			desc = "Under Cursor",
		},
	},
}
