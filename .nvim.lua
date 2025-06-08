vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  callback = function()
    vim.defer_fn(function()
      if vim.wo.spell then
        vim.bo.spellfile = "./custom.add"
      end
    end, 10)
  end,
})
