local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ba", mark.add_file)
vim.keymap.set("n", "<leader>oh", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>bn", function() ui.nav_next() end)
vim.keymap.set("n", "<leader>bp", function() ui.nav_prev() end)

