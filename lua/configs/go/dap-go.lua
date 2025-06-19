local dapGo = require "dap-go"
dapGo.setup {
  dap_configurations = {
    {
      type = "go",
      name = "Debug with args",
      request = "launch",
      program = "${file}",
      args = function()
        local input = vim.fn.input "Args: "
        return vim.split(input, " ", true)
      end,
    },
  },
}

local map = vim.keymap.set

map("n", "<leader>gt", function()
  require("dap-go").debug_test()
end, { desc = "Run DAP Go test method" })
