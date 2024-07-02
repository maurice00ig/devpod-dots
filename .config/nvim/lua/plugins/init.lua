return {
    {
        "folke/tokyonight.nvim",
        lazy = true,
    },
    { "ellisonleao/gruvbox.nvim", lazy = true, config = true },
    { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000 },

    {
        'mbbill/undotree',
        init = function()
            vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
        end
    },
    {
        'stevearc/oil.nvim',
        init = function()
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
        end,
        opts = {},
        dependencies = { "nvim-tree/nvim-web-devicons" },
    }
}
