local M = {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        }
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            require("nvim-treesitter.install").update({ with_sync = true })()
        end,
    },
    { "ThePrimeagen/harpoon" },
    { 'mbbill/undotree' },
    { 'tpope/vim-fugitive' },
    { "williamboman/mason.nvim" },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            automatic_enable = true,
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/nvim-cmp" },
    { "L3MON4D3/LuaSnip" },
    { "saadparwaiz1/cmp_luasnip" },
    { "j-hui/fidget.nvim" },
    { 'numToStr/Comment.nvim' },
    -- { 'jiangmiao/auto-pairs' },
    -- contains fix for rhs error
    { "VArtzy/auto-pairs-v9" },
    { "andweeb/presence.nvim" },
    -- {
    --     "OXY2DEV/markview.nvim",
    --     lazy = false, -- Recommended
    --     -- ft = "markdown" -- If you decide to lazy-load anyway
    --
    --     dependencies = {
    --         "nvim-tree/nvim-web-devicons"
    --     }
    -- },
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
    },
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        -- or if using mini.icons/mini.nvim
        -- dependencies = { "echasnovski/mini.icons" },
        opts = {},
        -- set up
        setup = function()
            require("fzf-lua").setup({})
        end,
    },
    { "mfussenegger/nvim-jdtls" },
    {
        'stevearc/dressing.nvim',
        opts = {},
    },
    {
        "ray-x/go.nvim",
        dependencies = {  -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        event = {"CmdlineEnter"},
        ft = {"go", 'gomod'},
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },
    {
        "lervag/vimtex",
        lazy = false,     -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = "zathura"
        end
    }
}

return { M }
