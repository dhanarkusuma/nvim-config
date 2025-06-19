require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- telescope mapping
local telescopeBuiltin = require "telescope.builtin"
telescopeBuiltin.lsp_references { cwd = vim.fn.getcwd() }
map("n", "<leader>ff", function()
  telescopeBuiltin.find_files { cwd = vim.fn.getcwd() }
end, { desc = "[F]ind [F]iles" })
map("n", "<leader>fg", telescopeBuiltin.live_grep, { desc = "[F]ind by [G]rep" })
map("n", "<leader>fb", telescopeBuiltin.buffers, { desc = "[F]ind [B]uffers" })
map("n", "<leader>fh", telescopeBuiltin.help_tags, { desc = "[F]ind [H]elp" })
map("n", "gr", telescopeBuiltin.lsp_references, { desc = "Telescope: LSP References" })

-- spectre mapping
map("n", "<leader>sr", function()
  require("spectre").open()
end)
