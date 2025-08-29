local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }
			}
		}
	}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.gopls.setup({
  capabilities = capabilities,
  settings = {
    gopls = {
      analyses = {
        shadow = true,
        unusedwrite = true,
        unusedvariable = true,
      },
      staticcheck = true,
      gofumpt = true,
      hints = {
          assignVariableTypes = true,
          compositeLiteralFields = true,
          compositeLiteralTypes = true,
          constantValues = true,
          functionTypeParameters = true,
          parameterNames = true,
          rangeVariableTypes = true,
      },
    },
  },
})
