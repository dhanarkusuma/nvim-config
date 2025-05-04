require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local telescopeBuiltin = require "telescope.builtin"
map("n", "<leader>ff", function()
  telescopeBuiltin.find_files { cwd = vim.fn.getcwd() }
end, { desc = "[F]ind [F]iles" })
map("n", "<leader>fg", telescopeBuiltin.live_grep, { desc = "[F]ind by [G]rep" })
map("n", "<leader>fb", telescopeBuiltin.buffers, { desc = "[F]ind [B]uffers" })
map("n", "<leader>fh", telescopeBuiltin.help_tags, { desc = "[F]ind [H]elp" })
