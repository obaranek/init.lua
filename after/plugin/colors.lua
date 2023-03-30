-- Set the colorscheme
vim.cmd [[colorscheme gruvbox-material]]
-- vim.g.gruvbox_material_background = 'hard'
-- vim.cmd('colorscheme rose-pine')

-- Set the background
vim.o.background = 'dark'

function ColorMyPencils(color)
	color = color or 'gruvbox-material'
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
