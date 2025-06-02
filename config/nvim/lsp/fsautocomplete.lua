return {
	cmd = { "fsautocomplete", "--adaptive-lsp-server-enabled" },
    -- BUG: This works for finding root dir, but throws an error when doing :checkhealth vim.lsp
	root_markers = function(name, path)
	    return name:match('%.fsproj$') ~= nil
	end,
	init_options = {
		AutomaticWorkspaceInit = true,
	},
	filetypes = { "fsharp" },
	settings = {
		FSharp = {
			EnableReferenceCodeLens = true,
			ExternalAutocomplete = false,
			InterfaceStubGeneration = true,
			InterfaceStubGenerationMethodBody = 'failwith "Not Implemented"',
			InterfaceStubGenerationObjectIdentifier = "this",
			Linter = true,
			RecordStubGeneration = true,
			RecordStubGenerationBody = 'failwith "Not Implemented"',
			ResolveNamespaces = true,
			SimplifyNameAnalyzer = true,
			UnionCaseStubGeneration = true,
			UnionCaseStubGenerationBody = 'failwith "Not Implemented"',
			UnusedDeclarationsAnalyzer = true,
			UnusedOpensAnalyzer = true,
			UseSdkScripts = true,
			keywordsAutocomplete = true,
		},
	},
}
