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
    rust = {"rustfmt"},
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
    lsp_fallback = true,
    timeout_ms = 500
  },

  -- format_on_save = function(bufnr)
  --   local ft = vim.bo[bufnr].filetype
  --   if ft == "rust" then
  --     vim.notify("[Conform] SKIP rust formatting for bufnr: " .. bufnr)
  --     return
  --   end
  --   return {
  --     lsp_fallback = true,
  --     timeout_ms = 500,
  --   }
  -- end
}

require("conform").setup(options)
