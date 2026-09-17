-- keep tabs (noexpandtab) as the global default for other filetypes, but
-- use real spaces for C so indentation renders the same width everywhere
-- (terminal, diffs, GitHub), not just in this config.
vim.bo.expandtab = true
vim.bo.tabstop = 2
vim.bo.shiftwidth = 2

vim.b.undo_ftplugin = (vim.b.undo_ftplugin and vim.b.undo_ftplugin .. " | " or "")
  .. "setlocal expandtab< tabstop< shiftwidth<"
