-- bootstrap lazy.nvim, LazyVim and your plugins
require("dabump.lazy")
require("dabump.options")
local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require("go.format").gofmt()
  end,
  group = format_sync_grp,
})
