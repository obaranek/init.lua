-- set leader to space
vim.g.mapleader = ' '

-- -- set the explore command to <leader>op
-- vim.keymap.set("n", '<leader>op', vim.cmd.Ex)

-- Map 'jk' and 'kj' to escape in insert mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', {noremap = true})

vim.keymap.set('n', '<leader>bk', vim.cmd.bd)

-- Move the highlighted texts
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Make J return to the beginning of the line 
vim.keymap.set("n", "J", "mzJ`z")
-- Keep cursor in the middle when navigating by half pages
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- keep you cursor in the middle when searching for ter
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- delete the highlighted word into the void register and paste the other one  over
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- navigating in the copen window
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- substite what's under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Define a function to toggle netrw
function ToggleNetrw()
  if vim.bo[0].filetype == "netrw" then
    -- If the current buffer is netrw, close it
    vim.cmd('bd')
  else
    -- Otherwise, open netrw
    local curbuf = vim.api.nvim_get_current_buf()
    local curwin = vim.api.nvim_get_current_win()
    vim.cmd('Explore')
    if vim.api.nvim_get_current_buf() == curbuf then
      vim.api.nvim_set_current_win(curwin)
    end
  end
end

-- Map <leader>op to toggle netrw
vim.api.nvim_set_keymap('n', '<leader>op', ':lua ToggleNetrw()<CR>', { noremap = true, silent = true })

