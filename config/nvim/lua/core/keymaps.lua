return {
	{ "<esc>", ":noh<CR>", mode = "n", desc = "No highlight" },
	{ "jk", "<esc>", mode = "i" },
	{ "<C-q>", vim.cmd.bdelete, desc = "Delete Buffer" },
	{ "<C-n>", vim.cmd.bnext, desc = "Goto Next Buffer" },
	{ "<C-p>", vim.cmd.bprev, desc = "Goto Next Buffer" },
	{ "<C-j>", "<C-e>j" },
	{ "<C-k>", "<C-y>k" },
	{ "<C-l>", "<C-o>A", mode = "i" },
	{ "<C-b>", "<C-o>b", mode = "i" },
	{ "<C-k>", "<C-o>C", mode = "i" },
	{
		"<Leader>v",
		function()
			local pattern = vim.fn.input("Pattern: ")
			vim.cmd(":vimgrep /" .. pattern .. "/ %")
		end,
		mode = "n",
		desc = "VimGrep",
	},
	-- LSP keymaps
	{ "<Leader>d", vim.diagnostic.open_float, desc = "Diagnostic float" },
	{ "grD", vim.lsp.buf.type_definition, desc = "Type definition" },
	{ "grf", function() vim.diagnostic.jump({count=1, float=true}) end, desc = "Goto next Diagnostic" },
	{ "grF", function () vim.diagnostic.jump({count=-1, float=true}) end, desc = "Goto prev Diagnostic" },
	{ "grq", vim.diagnostic.setqflist, desc = "Diagnostics -> QF" },
	{ "g.", vim.lsp.buf.code_action, desc = "Code Actions" },
	-- LaTeX
	{ "<Leader>no", "O\\noindent<esc>j" },
    -- NOTE: This is only useful for grading and should be removed when done grading this semester
    { 'å', 'ggdG"+p:lua require("conform").format()<CR>:w<CR>'}
}
