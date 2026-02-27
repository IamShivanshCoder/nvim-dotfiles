return({
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        ensure_installed = {"lua","javascript","html","python"},
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        }


    }
})
