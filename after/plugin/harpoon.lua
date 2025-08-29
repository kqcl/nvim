local harpoon = require("harpoon")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- settings
harpoon.setup({
    save_on_toggle = true,
})

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- navigation
vim.keymap.set("n", "<C-h>", function () ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function () ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function () ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function () ui.nav_file(4) end)

-- swap to next and previous
vim.keymap.set("n", "<C-P>", function () ui.nav_prev() end)
vim.keymap.set("n", "<C-O>", function () ui.nav_next() end)
