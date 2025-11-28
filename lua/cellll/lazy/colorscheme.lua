-- lua/plugins/rose-pine.lua
return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		vim.cmd("colorscheme rose-pine")
	end
}

-- dracule colorscheme
-- return {
--   -- add dracula
--    "Mofiqul/dracula.nvim" ,
-- 	config = function()
-- 		vim.cmd("colorscheme dracula")
-- 	end,
--   -- Configure LazyVim to load dracula
-- }
