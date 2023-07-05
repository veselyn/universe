local lspconfig = require("lspconfig")
local cmplsp = require("cmp_nvim_lsp")
local format_on_save = require("aul.lsp.format")

local servers = {
	"bashls",
	"gopls",
	"lua_ls",
	"nil_ls",
	"rust_analyzer",
}

local capabilities = cmplsp.default_capabilities()

local function format()
	vim.lsp.buf.format({ async = true })
end

local function list_workspace_folders()
	print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end

local function on_attach(_, bufnr)
	local function map(mode, lhs, rhs)
		vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
	end

	map("n", "<LocalLeader>K", vim.lsp.buf.signature_help)
	map("n", "<LocalLeader>[d", vim.diagnostic.goto_prev)
	map("n", "<LocalLeader>]d", vim.diagnostic.goto_next)
	map("n", "<LocalLeader>ds", vim.lsp.buf.document_symbol)
	map("n", "<LocalLeader>e", vim.diagnostic.open_float)
	map("n", "<LocalLeader>f", format)
	map("n", "<LocalLeader>gD", vim.lsp.buf.declaration)
	map("n", "<LocalLeader>gd", vim.lsp.buf.definition)
	map("n", "<LocalLeader>gi", vim.lsp.buf.implementation)
	map("n", "<LocalLeader>gr", vim.lsp.buf.references)
	map("n", "<LocalLeader>gt", vim.lsp.buf.type_definition)
	map("n", "<LocalLeader>k", vim.lsp.buf.hover)
	map("n", "<LocalLeader>l", vim.diagnostic.setloclist)
	map("n", "<LocalLeader>q", vim.diagnostic.setqflist)
	map("n", "<LocalLeader>rn", vim.lsp.buf.rename)
	map("n", "<LocalLeader>wa", vim.lsp.buf.add_workspace_folder)
	map("n", "<LocalLeader>wl", list_workspace_folders)
	map("n", "<LocalLeader>wr", vim.lsp.buf.remove_workspace_folder)
	map("n", "<LocalLeader>ws", vim.lsp.buf.workspace_symbol)
	map({ "n", "x" }, "<LocalLeader>ca", vim.lsp.buf.code_action)

	format_on_save(bufnr)
end

for _, server in ipairs(servers) do
	lspconfig[server].setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})
end