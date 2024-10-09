return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "BufRead",
	config = function()
		local util = require("core.utilities")
		local trouble = require("trouble")

		local function lazy_toggle(x)
			return util.lazy_eval(x)
		end

		trouble.setup({ focus = true })

        vim.keymap.set("n", "<Leader>xt", vim.cmd.TodoTrouble, { desc = "ToDo Trouble" })
		vim.keymap.set("n", "ga", lazy_toggle("diagnostics"), { desc = "Diagnostics" })
		vim.keymap.set("n", "<Leader>xl", lazy_toggle("loclist"), { desc = "Loclist" })
		vim.keymap.set("n", "<Leader>xq", lazy_toggle("quickfix"), { desc = "Quickfix" })
		vim.keymap.set("n", "gr", lazy_toggle("lsp_references"), { desc = "LSP References" })
		vim.keymap.set("n", "gi", lazy_toggle("lsp_implementations"), { desc = "LSP Implementations" })
		vim.keymap.set("n", "gd", lazy_toggle("lsp_definitions"), { desc = "LSP Definitions" })
		vim.keymap.set("n", "gD", lazy_toggle("lsp_declarations"), { desc = "LSP Definitions" })
		vim.keymap.set("n", "<Leader>xs", lazy_toggle("symbols"), { desc = "Symbols" })
		vim.keymap.set("n", "<Leader>xx", trouble.toggle, { desc = "Toggle Trouble" })
	end,
}
