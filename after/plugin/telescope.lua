-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>sp', builtin.live_grep, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.keymap.set('n', '<leader><leader>', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>sp', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)
