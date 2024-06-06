-- set tabs function:
function set_tabs(num)
  vim.opt_local.expandtab = true
  vim.opt_local.softtabstop = num
  vim.opt_local.shiftwidth = num
  vim.opt_local.formatoptions:append({ c = true, r = true, o = true, q = true })
end
