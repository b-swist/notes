vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  callback = function()
    vim.opt_local.spellfile = "./custom.add"
  end,
})
