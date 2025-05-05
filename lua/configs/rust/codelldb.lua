local dap = require "dap"
local mason_registry = require "mason-registry"

-- Ambil path dari mason
local codelldb = mason_registry.get_package "codelldb"
local extension_path = codelldb:get_install_path() .. "/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"

-- Adapter DAP
dap.adapters.codelldb = {
  type = "server",
  port = "${port}",
  executable = {
    command = codelldb_path,
    args = { "--port", "${port}" },
    detached = false,
  },
}

dap.configurations.rust = {
  {
    name = "Launch Rust binary",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = function()
      local input = vim.fn.input "Args: "
      return vim.fn.split(input, " ", true)
    end,
  },
}
