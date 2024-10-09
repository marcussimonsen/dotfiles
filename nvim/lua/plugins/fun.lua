return {
	{
		"rktjmp/playtime.nvim",
		cmd = "Playtime",
	},
	{ "Eandrju/cellular-automaton.nvim",
        cmd = "CellularAutomaton"},
	{
		"jim-fx/sudoku.nvim",
		cmd = "Sudoku",
		config = function()
			require("sudoku").setup({})
		end,
	},
}
