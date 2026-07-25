vim.pack.add({
	"https://github.com/MeanderingProgrammer/render-markdown.nvim",
})

require("render-markdown").setup({
	completions = { lsp = { enabled = true } },
	file_types = { "markdown", "vimwiki" },
	code = { enabled = true },
	bullet = { enabled = true, icon = "•" },
	quote = { enabled = true },
	latex = { enabled = true },
})
