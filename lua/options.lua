require "nvchad.options"

-- add yours here!

vim.filetype.add {
  pattern = {
    [".env.*"] = "sh",
    [".env"] = "sh",
  },
}
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
