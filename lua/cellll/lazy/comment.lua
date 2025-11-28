return { -- plugin to comment and uncomment a line easily
    'numToStr/Comment.nvim',
	config = function ()
	require('Comment').setup()
	end,
    opts = {
        -- add any options here
    }
}
