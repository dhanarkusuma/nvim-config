local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofumpt" },
    gomod = { "gofumpt", "goimports-reviser" },
    gowork = { "gofumpt", "goimports-reviser" },
    gotmpl = { "gofumpt", "goimports-reviser" },
    python = { "black" },
    typescript = { "prettier" },
    javascript = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    markdown = { "prettier" },
    rust = { "rustfmt" },
  },

  formatters = {
    golines = {
      prepend_args = { "--max-len=120" },
    },
    black = {
      prepend_args = {
        "--fast",
        "--line-length",
        "80",
      },
    },
  },

  format_on_save = {
    lsp_format = "fallback",
    timeout_ms = 500,
  },
}

require("conform").setup(options)
