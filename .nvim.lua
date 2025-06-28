vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  callback = function()
    vim.schedule(function()
      if vim.wo.spell then
        vim.bo.spellfile = "./custom.add"
      end
    end)
  end,
})
