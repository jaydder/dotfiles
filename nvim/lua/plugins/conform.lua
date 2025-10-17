return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            python = {"ruff_format", "ruff_organize_imports"}
        },
        format_on_save = {
            enabled = true, -- ativa o format on save
            lsp_fallback = true, -- se não houver LSP, ainda formata
            timeout_ms = 1000 -- tempo máximo em ms
        }
    },
    -- opcional: se quiser garantir que o plugin carregue no evento BufWritePre
    event = "BufWritePre"
}
