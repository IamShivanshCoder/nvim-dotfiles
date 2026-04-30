vim.pack.add{
{src='https://github.com/neovim/nvim-lspconfig'},
{src='https://github.com/mason-org/mason.nvim'},
{src='https://github.com/mason-org/mason-lspconfig.nvim'}
}

require('mason').setup()
require('mason-lspconfig').setup()


-- Lua Config
vim.lsp.enable({'lua-language-server','pyright','clangd'})
vim.lsp.config("lua-language-server", {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".luarc.json", ".git" },
    settings = {
        Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            telemetry = { enable = false },
        },
    },
})

-- C Config 
vim.lsp.config("clangd", {
    cmd = { "clangd", "--background-index", "--clang-tidy" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_markers = { "compile_commands.json", "compile_flags.txt", ".git" },
})

-- pyright Python COnfig (pkg install pyright)
vim.lsp.config("pyright", {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "setup.py", ".git" },
    settings = {
        python = { analysis = { typeCheckingMode = "basic" } },
    },
})
