function ColorMyPencils(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#808080", bg = "none", ctermbg = "none", italic = true })
end

require("rose-pine").setup({
    enable = {
        terminal = true,
    },
    styles = {
        italic = true,
        bold = true,
        transparency = true,
    },
    highlight_groups = {
        TelescopeBackground = { bg = "none" },
        TelescopeBorder = { fg = "highlight_high", bg = "none" },
        TelescopeNormal = { bg = "none" },
        TelescopePromptNormal = { bg = "none" },
        TelescopeResultsNormal = { fg = "subtle", bg = "none" },
        TelescopeSelection = { fg = "text", bg = "none" },
        TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
        CurSearch = { fg = "base", bg = "rose", inherit = false },
        Search = { bg = "rose", blend = 20, inherit = false },
    },
})
ColorMyPencils()
