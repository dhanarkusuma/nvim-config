local options = {
  ensure_installed = {
    "bash",
    "fish",
    "go",
    "gomod",
    "gosum",
    "gowork",
    "gotmpl",
    "javascript",
    "lua",
    "luadoc",
    "markdown",
    "printf",
    "prisma",
    "python",
    "rust",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
    "typescript",
  },

  hightlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
