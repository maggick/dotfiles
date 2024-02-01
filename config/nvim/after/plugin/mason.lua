require("mason").setup {
    ui = {
        icons = {
            package_installed = "✓"
        }
    }
}
require("mason-lspconfig").setup {
    ensure_installed = { 'bashls', 'kotlin_language_server', 'clangd', 'dockerls', 'jdtls', 'ltex', 'pyright', 'rust_analyzer', 'texlab', 'tailwindcss', 'tsserver'},
}
