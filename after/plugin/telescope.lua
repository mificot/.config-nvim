local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.load_extension("fzf")
    
vim.keymap.set('n', '<leader>ff', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pr', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep >") });
end)
