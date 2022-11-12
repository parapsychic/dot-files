local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
	formatting.autopep8,
	formatting.dart_format,
	formatting.stylua,
}

null_ls.setup({
	sources = sources,

	-- you can reuse a shared lspconfig on_attach callback here
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,

				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					vim.lsp.buf.format({ timeout_ms = 2000 })
				end,
			})
		end
	end,
})
