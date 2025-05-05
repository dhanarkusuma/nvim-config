require("mason-nvim-dap").setup {
  ensure_installed = { "codelldb", "delve" },
  automatic_installation = { exclude = {} },
}
