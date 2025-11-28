-- plugin to show tab in buffer at the top
return {
'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
	require("bufferline").setup()
	end,
}

