return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "BufRead",
	config = function()
		local util = require("core.utilities")
		local trouble = require("trouble")

		local function open(x)
			return util.lazy_eval(trouble.open, x)
		end

		trouble.setup({ focus = true })

		vim.keymap.set("n", "<Leader>xt", vim.cmd.TodoTrouble, { desc = "ToDo" })
		vim.keymap.set("n", "<Leader>xd", open("diagnostics"), { desc = "Diagnostics" })
		vim.keymap.set("n", "<Leader>xl", open("loclist"), { desc = "Loclist" })
		vim.keymap.set("n", "<Leader>xq", open("quickfix"), { desc = "Quickfix" })
		vim.keymap.set("n", "gr", open("lsp_references"), { desc = "LSP References" })
		vim.keymap.set("n", "gi", open("lsp_implementations"), { desc = "LSP Implementations" })
		vim.keymap.set("n", "gd", open("lsp_definitions"), { desc = "LSP Definitions" })
		vim.keymap.set("n", "gD", open("lsp_declarations"), { desc = "LSP Definitions" })
		vim.keymap.set("n", "<Leader>xs", open("symbols"), { desc = "Symbols" })
	end,
}
