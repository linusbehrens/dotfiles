-- Mason setup: Handles the installation of LSP servers, DAP servers, and more.
require("mason").setup()

-- Mason LSPConfig setup: Ensures installation of required LSP servers.
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls", -- Lua Language Server
		"pyright", -- Python Language Server
		"jdtls", -- Java Language Server
		"marksman", -- Markdown Language Server
		"clangd", -- C/C++ Language Server (optional, add if you need C/C++)
		-- "clang-format",
		-- "codelldb",
	},
	automatic_installation = true, -- Automatically install missing servers
})

-- Require lspconfig for setting up language servers.
local lspconfig = require("lspconfig")

-- Ensure that mason-lspconfig installs these servers
local servers = { "lua_ls", "pyright", "jdtls", "marksman", "clangd" }

-- Loop through each server and set up with default configuration
for _, server in ipairs(servers) do
	lspconfig[server].setup({
		-- Common configuration for all servers
		on_attach = function(client, bufnr)
			-- Set tab size and expand tab settings for each LSP
			vim.opt_local.tabstop = 4
			vim.opt_local.shiftwidth = 4
			vim.opt_local.expandtab = true
		end,
	})
end

-- Lua Language Server configuration
lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }, -- Recognize 'vim' as a global variable for Neovim
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true), -- Automatically detect libraries
			},
			telemetry = { enable = false }, -- Disable telemetry data collection by Lua LS
		},
	},
})

-- Pyright for Python
lspconfig.pyright.setup({
	settings = {
		python = {
			analysis = {
				typeCheckingMode = "basic", -- You can change this to "strict" or "off" if needed
			},
		},
	},
})

-- Java Language Server configuration
lspconfig.jdtls.setup({
	cmd = { "java-lsp.sh" }, -- Adjust this path if necessary for your system
	root_dir = lspconfig.util.root_pattern(".git", "mvnw", "gradlew", "pom.xml", "build.gradle"), -- Detect project root
	settings = {
		java = {
			format = {
				settings = {
					tabSize = 4,
					insertSpaces = true, -- Use spaces instead of tabs
				},
				enable = true,
				defaultConfig = {
					indent_style = "space",
					indent_size = "4",
				},
			},
		},
	},
})

-- Marksman: Markdown Language Server configuration
lspconfig.marksman.setup({})

-- Clangd Language Server configuration
lspconfig.clangd.setup({
	cmd = { "clangd", "--background-index" }, -- Ensure clangd is in your PATH
	settings = {
		clangd = {
			format = {
				settings = {
					tabSize = 4,
					insertSpaces = true, -- Use spaces instead of tabs
				},
				enable = true,
				defaultConfig = {
					indent_style = "space",
					indent_size = "4",
				},
			},
		},
	},
})

-- Return a valid Lua table (necessary for LazyVim to load the config properly)
return {}
