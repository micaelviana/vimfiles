require('Comment').setup()
local ft = require('Comment.ft')

--attacking the antlr problem
vim.api.nvim_create_autocmd({ "BufNewFile", "BufFilePre", "BufRead" }, {
  pattern = "*.g",
  command = "set filetype=antlr"
})

ft.antlr = '//%s'
