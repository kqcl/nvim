-- Define configurations
vim.lsp.config.lua_ls = {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}

vim.lsp.config.gopls = {
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
}

-- Enable servers
vim.lsp.enable('lua_ls')
vim.lsp.enable('gopls')

