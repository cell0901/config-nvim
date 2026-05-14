-- created this file for defalut settings for nvim
vim.opt.clipboard = "unnamedplus" -- -- use system keyboard for yank

-- setting the :bp and :bn command to move faster between files
vim.keymap.set("n", "<C-p>", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-n>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", "<cmd>bd<CR>", { desc = "Close Buffer" }) -- to close the buffer opened using <leader>q or the files opened quickly

vim.opt.nu = true                                                          -- set line numbers -- set line numbers
vim.opt.relativenumber = true                                              -- use relative line numbers

-- set tab size to 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true


vim.opt.wrap = false --text in a file that are longer than the width of the editor window will not continue on the next line on the screen


vim.opt.incsearch = true -- incremental search


vim.opt.termguicolors = true

--  burWritePre for auto formatter
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    local ft = vim.bo[args.buf].filetype

    if ft == "prisma" or ft == "rust" then
      return
    end

    vim.lsp.buf.format()
  end,
})
