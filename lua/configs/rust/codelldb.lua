local dap = require "dap"

-- Check if codelldb is installed
local mason_registry = require "mason-registry"
if not mason_registry.is_installed "codelldb" then
  vim.notify("codelldb is not installed. Please install it via Mason.", vim.log.levels.ERROR)
  return
end

-- Get path from mason - manual path construction (most reliable)
local mason_packages_path = vim.fn.stdpath "data" .. "/mason/packages"
local codelldb_path = mason_packages_path .. "/codelldb/extension/adapter/codelldb"

-- For Windows, add .exe extension
if vim.fn.has "win32" == 1 then
  codelldb_path = codelldb_path .. ".exe"
end

-- Verify the path exists
if vim.fn.executable(codelldb_path) == 0 then
  vim.notify("CodeLLDB executable not found at: " .. codelldb_path, vim.log.levels.ERROR)
  return
end

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
