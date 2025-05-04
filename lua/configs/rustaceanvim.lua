vim.g.rustaceanvim = {
  server = {
    on_attach = function(_, bufnr)
      vim.keymap.set("n", "<leader>a", function()
        vim.cmd.RustLsp "codeAction"
      end, { silent = true, buffer = bufnr })

      vim.keymap.set("n", "K", function()
        vim.cmd.RustLsp { "hover", "actions" }
      end, { silent = true, buffer = bufnr })

      vim.keymap.set("n", "<leader>f", function()
        vim.lsp.buf.format { async = true }
      end, { buffer = bufnr })
    end,

    capabilities = {
      semanticTokensProvider = nil,
    },

    default_settings = {
      ["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
        },
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  },
}
