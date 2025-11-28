-- this file is for defining the keys opiton using the which key plugin
local which_key = require("which-key")

-- Use the new spec format
which_key.add({
  -- Leader mappings
  { "<leader>e", vim.cmd.Ex, desc = "Open file explorer" },
  { "<leader>p", '"_dP', desc = "Paste without overwrite", mode = "x" },
  { "<leader>/", "<Plug>(comment_toggle_linewise_current)", desc = "Toggle comment" },
  { "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Search and replace word under cursor" },
  { "<leader>t", ":Today<CR>", desc = "Open today's note" },
  
  -- Other mappings
  { "J", "mzJ`z", desc = "Join lines and keep cursor position" },
  { "<C-d>", "<C-d>zz", desc = "Half page down and center" },
  { "<C-u>", "<C-u>zz", desc = "Half page up and center" },
  { "n", "nzzzv", desc = "Next search result and center" },
  { "N", "Nzzzv", desc = "Previous search result and center" },
  { "Q", "<nop>", desc = "Disable Ex mode" },
})
