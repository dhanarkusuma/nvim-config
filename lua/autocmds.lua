

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.rs",
  callback = function(args)
    local bufnr = args.buf
    local autocmds = vim.api.nvim_get_autocmds({
      event = "BufWritePre",
      buffer = bufnr,
    })

    for _, ac in ipairs(autocmds) do
      if ac.command and ac.command:find("rustfmt#PreWrite") then
        vim.api.nvim_del_autocmd(ac.id)
        vim.notify("🔥 Cleared rustfmt#PreWrite from buffer " .. bufnr)
      end
    end
  end,
})

