local dap = require "dap"
local dapui = require "dapui"
dapui.setup()

local map = vim.keymap.set

map("n", "<leader>d", function()
  require("dapui").toggle()
end, { desc = "Toggle DAP UI" })

map("n", "<leader>do", function()
  require("dapui").open()
end, { desc = "Open DAP UI" })

map("n", "<leader>dx", function()
  require("dapui").close()
end, { desc = "Close DAP UI" })

dap.listeners.after.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.after.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end
