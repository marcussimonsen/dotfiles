return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = "Telescope",
	config = function()
		local telescope = require("telescope.builtin")
		local trouble = require("trouble.sources.telescope")

		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<C-t>"] = trouble.open,
					},
					n = {
						["<C-t>"] = trouble.open,
					},
				},
			},
		})
	end,
	keys = {
		{
			"<Leader>fb",
			mode = "n",
			function()
				vim.cmd([[Telescope buffers]])
			end,
			desc = "Buffers",
		},
		{
			"<Leader>fc",
			mode = "n",
			function()
				vim.cmd([[Telescope commands]])
			end,
			desc = "Commands",
		},
		{
			"<Leader>ff",
			mode = "n",
			function()
				vim.cmd([[Telescope find_files]])
			end,
			desc = "Find File",
		},
		{
			"<Leader>fg",
			mode = "n",
			function()
				vim.cmd([[Telescope live_grep]])
			end,
			desc = "Live Grep",
		},
		{
			"<Leader>fh",
			mode = "n",
			function()
				vim.cmd([[Telescope help_tags]])
			end,
			desc = "Help Tags",
		},
		{
			"<Leader>fp",
			mode = "n",
			function()
				vim.cmd([[Telescope colorscheme]])
			end,
			desc = "Colorscheme",
		},
		{
			"<Leader>fq",
			mode = "n",
			function()
				vim.cmd([[Telescope quickfix]])
			end,
			desc = "Quickfix",
		},
		{
			"<Leader>fr",
			mode = "n",
			function()
				vim.cmd([[Telescope oldfiles]])
			end,
			desc = "Recent Files",
		},
		{
			"<Leader>ft",
			mode = "n",
			function()
				vim.cmd([[Telescope treesitter]])
			end,
			desc = "Treesitter",
		},
		{
			"<Leader>fs",
			mode = "n",
			function()
				vim.cmd([[Telescope lsp_document_symbols]])
			end,
			desc = "LSP Document Symbols",
		},
		{
			"<Leader>fl",
			mode = "n",
			function()
				vim.cmd([[Telescope loclist]])
			end,
			desc = "Loclist",
		},
		{
			"<Leader>tf",
			mode = "n",
			function()
				vim.cmd([[TodoTelescope]])
			end,
			desc = "ToDo Telescope",
		},
		{
			"<Leader>fw",
			mode = "n",
			function()
				vim.cmd([[Telescope grep_string]])
			end,
			desc = "Under Cursor",
		},
	},
}
