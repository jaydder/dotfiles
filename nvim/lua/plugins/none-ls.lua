return {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
        local nls = require("null-ls")
        -- garante que sources existe
        opts.sources = opts.sources or {}
        -- adiciona o formatter biome
        table.insert(opts.sources, nls.builtins.formatting.biome)
        return opts
    end
}
