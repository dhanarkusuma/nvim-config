local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofumpt", "golines" },
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
    rust = {}, -- penting untuk cegah error di Rust
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
    lsp_fallback = false,
    timeout_ms = 500,
  },
}

require("conform").setup(options)
