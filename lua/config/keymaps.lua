-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.vscode then
  local vscode = require("vscode")
  vim.keymap.set("n", "<leader>e", function()
    vscode.action("workbench.files.action.focusFilesExplorer")
  end)
end

local is_mac = vim.fn.has("macunix") == 1

if is_mac then
  vim.notify("hello from mac")
end
