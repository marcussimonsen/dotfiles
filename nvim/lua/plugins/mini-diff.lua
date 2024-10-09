return {
	"echasnovski/mini.diff",
	version = false,
    event = "BufRead",
	config = function()
		local minidiff = require("mini.diff")

		minidiff.setup({
			view = {
				style = "number",
			},
		})

		vim.keymap.set("n", "<Leader>g", minidiff.toggle_overlay, { desc = "Toggle Git Overlay" })
	end,
}
