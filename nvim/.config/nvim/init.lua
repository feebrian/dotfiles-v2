require("config.options")
require("config.keymaps")

-- load lazy package manager
require("config.lazy")

-- load bufferline
require("bufferline").setup({
	options = {
		offsets = {
			{
				filetype = "neo-tree",
				text = "File Explorer",
				highlight = "Directory",
				separator = true,
			},
		},
	},
})

-- lualine
require("lualine").setup({
	options = {
		theme = "gruvbox",
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
		disabled_filetypes = {
			"neo-tree",
		},
	},
})

-- conform
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		rust = { "rustfmt", lsp_format = "fallback" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})

-- mason
require("mason").setup()

-- comment
require("Comment").setup()

-- notify
require("notify").setup({
	background_colour = "#000000",
})
