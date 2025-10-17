return {
    -- https://github.com/christoomey/vim-tmux-navigator
    "christoomey/vim-tmux-navigator",
    -- só carregar se o TMUX estiver sendo usado
    cond = function()
        return vim.env.TMUX ~= nil
    end,
    lazy = true -- carrega sob demanda
}
