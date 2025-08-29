vim.keymap.set('n', '<leader>cp', function()
  vim.cmd('!texlite %')
end, { buffer = true })
