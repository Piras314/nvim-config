-- LSP configuration

local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	'clangd',
	'lua_ls',
})

-- Nice remaps
local cmp = require('cmp')

local cmp_select   = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>']     = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>']     = cmp.mapping.select_next_item(cmp_select),
	['<C-y>']     = cmp.mapping.confirm({select = true}),
	['<C-Space>'] = cmp.mapping.complete(),
	['<CR>']      = vim.NIL,
})

lsp.set_preferences({
	sign_icons = { }
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.configure('lua_ls', {
	settings = {
		Lua = {
			diagnostics = { globals = {'vim'} }
		}
	}
})

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	update_in_insert = false,
	underline = true,
	severity_sort = false,
	float = true,
})
