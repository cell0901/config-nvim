return {
    'nvim-telescope/telescope.nvim', tag = 'v0.1.9',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function () -- function created to set keymaps. this can be done on any plugin
	local builtin = require('telescope/builtin')
	
	-- keybindings
	vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
	vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
	vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

      end,
    }
