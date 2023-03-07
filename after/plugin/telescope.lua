local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

require("telescope").load_extension "file_browser"

vim.keymap.set('n', '<leader>fb', ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })
