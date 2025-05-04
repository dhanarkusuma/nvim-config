local dapGo = require "dap-go"
dapGo.setup()

local map = vim.keymap.set

map("n", "<leader>drt", function()
  require("dap-go").debug_test()
end, { desc = "Run DAP Go test method" })
