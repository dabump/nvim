-- ~/nvim/lua/dabump/lazy.lua
local opt = vim.opt

-- editor options

opt.tabstop = 2
opt.shiftwidth = 4
opt.number = false

vim.filetype.add({
  extension = {
    ["http"] = "http",
  },
})
