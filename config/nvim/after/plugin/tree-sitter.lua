require("nvim-treesitter.configs").setup({
  ensure_installed = { "markdown", "markdown_inline", ... },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = { "markdown" },
  },
})
