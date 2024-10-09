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

		vim.keymap.set("n", "<Leader>fb", telescope.buffers, { desc = "Buffers" })
		vim.keymap.set("n", "<Leader>fc", telescope.commands, { desc = "Commands" })
		vim.keymap.set("n", "<Leader>ff", telescope.find_files, { desc = "Find File" })
		vim.keymap.set("n", "<Leader>fg", telescope.live_grep, { desc = "Live Grep" })
		vim.keymap.set("n", "<Leader>fh", telescope.help_tags, { desc = "Help Tags" })
		vim.keymap.set("n", "<Leader>fp", telescope.colorscheme, { desc = "Colorscheme" })
		vim.keymap.set("n", "<Leader>fq", telescope.quickfix, { desc = "Quickfix" })
		vim.keymap.set("n", "<Leader>fr", telescope.oldfiles, { desc = "Recent Files" })
		vim.keymap.set("n", "<Leader>ft", telescope.treesitter, { desc = "Treesitter" })
		vim.keymap.set("n", "<Leader>fs", telescope.lsp_document_symbols, { desc = "LSP Document Symbols" })
		vim.keymap.set("n", "<Leader>fl", telescope.loclist, { desc = "Loclist" })
		vim.keymap.set("n", "<Leader>tf", vim.cmd.TodoTelescope, { desc = "ToDo Telescope" })
	end,
}
