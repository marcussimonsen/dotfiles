return {
	"mfussenegger/nvim-jdtls",
	ft = { "java" },
	config = function()
		local jdtls = require("jdtls")

		local root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" })
		local home = os.getenv("HOME")

		local config = {
			cmd = {
				"/usr/bin/jdtls", -- adjust if installed differently
				"-data",
				home .. "/.cache/jdtls/workspace/" .. vim.fn.fnamemodify(root_dir, ":p:h:t"),
			},
			root_dir = root_dir,
			settings = {
				java = {},
			},
		}

		jdtls.start_or_attach(config)
	end,
}
