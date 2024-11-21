return {
	"jose-elias-alvarez/null-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.clang_format.with({
					extra_args = { "--style", "{IndentWidth: 4}" }, -- Set indent to 4 spaces
				}),
			},
		})
	end,
}
