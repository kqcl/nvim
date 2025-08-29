-- ftplugin/go.lua

-- Auto-format on save
local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require('go.format').goimports()
  end,
  group = format_sync_grp,
})

-- Load Go plugin (ensure it's installed)
require('go').setup({
    lsp_inlay_hints = {
        enable = true,
        style = 'inlay',
    }
})

-- Print confirmation message
print("Go loaded")

-- Keymap using :GoRun (Ex command call)
vim.keymap.set('n', '<leader>gr', '<cmd>GoRun<CR>', { buffer = true })

-- Keymap using :GoBuild (Ex command call)
vim.keymap.set('n', '<leader>gb', '<cmd>GoBuild<CR>', { buffer = true })

-- Keymap using :GoTest (Ex command call)
vim.keymap.set('n', '<leader>gt', '<cmd>GoTest<CR>', { buffer = true })

-- Keymap using :GoIfErr (Ex command call)
vim.keymap.set('n', '<leader>ge', '<cmd>GoIfErr<CR>', { buffer = true })

-- Keymap using :GoLint (Ex command call)
vim.keymap.set('n', '<leader>gl', '<cmd>GoLint<CR>', { buffer = true })

vim.keymap.set('n', '<leader>gi', '<cmd>GoToggleInlay<CR>', { buffer = true })
