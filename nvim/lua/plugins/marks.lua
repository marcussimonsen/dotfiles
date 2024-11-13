return {
	"chentoast/marks.nvim",
	event = "BufReadPost",
	config = function()
		local marks = require("marks")

		marks.setup({})

		vim.keymap.set("n", "m:", marks.preview, { desc = "Preview marks" })
		-- vim.keymap.set("n", "<Leader>xm", vim.cmd([[MarksQFListAll]]), { desc = "List all marks" })
		-- vim.keymap.set("n", "<Leader>xb", vim.cmd([[MarksQFListBuf]]), { desc = "List buffer marks" })
		-- vim.keymap.set("n", "<Leader>xg", vim.cmd([[MarksQFListGlobal]]), { desc = "List global marks" })
	end,
}
