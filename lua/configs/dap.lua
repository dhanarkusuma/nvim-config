local map = vim.keymap.set

map("n", "B", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle DAP Breakpoint" })
map("n", "<leader>c", "<cmd> DapContinue <CR>", { desc = "Start or continue DAP" })
