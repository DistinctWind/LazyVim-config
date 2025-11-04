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
  -- 普通模式映射
  vim.keymap.set("n", "<D-d>", "<C-d>")
  vim.keymap.set("n", "<D-u>", "<C-u>")
  vim.keymap.set("n", "<D-f>", "<C-f>")
  vim.keymap.set("n", "<D-b>", "<C-b>")

  -- 可视模式映射（可选）
  vim.keymap.set("v", "<D-d>", "<C-d>")
  vim.keymap.set("v", "<D-u>", "<C-u>")
  vim.keymap.set("v", "<D-f>", "<C-f>")
  vim.keymap.set("v", "<D-b>", "<C-b>")
end
