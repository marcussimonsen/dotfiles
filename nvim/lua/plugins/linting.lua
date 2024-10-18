return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			cpp = { "cpplint" },
			python = { "pylint", "mypy" },
			-- java = { "checkstyle" },
			markdown = { "vale" },
			cmake = { "cmakelint" },
			make = { "checkmake" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave", "TextChanged" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
				-- Linters used in all filetypes
			end,
		})
	end,
}
