return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    -- Everything in opts will be passed to setup()
    opts = {
        -- Define your formatters
        formatters_by_ft = {
            python = { "black" },
        },
        -- Set up format-on-save
        format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
    },
}
