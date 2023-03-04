-- Programmed by Piboy315

-- Requires
require("pi.remap")
require("pi.packer")
require("pi.set")

-- Greet the penguin
print("hello, pi")

-- Gruvbox theme
vim.o.background = "dark"
require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = true,
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "hard", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = false,
})

vim.cmd("colorscheme gruvbox")


