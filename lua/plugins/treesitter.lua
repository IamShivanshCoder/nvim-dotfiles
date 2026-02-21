return({
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        ensure_installed = {"lua","javascript","html"},
        auto_install = true,
        highlight = {
            enable = true
        }


    }
})
