-- TODO: Get working with loclist
vim.api.nvim_create_autocmd("BufRead", {
	pattern = "quickfix",
	callback = function(ev)
		vim.schedule(function()
			vim.cmd([[cclose]])
			vim.cmd([[Trouble qflist open]])
		end)
	end,
})
