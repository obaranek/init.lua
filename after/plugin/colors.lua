-- Set the colorscheme
vim.cmd [[colorscheme gruvbox]]
-- vim.cmd('colorscheme rose-pine')

-- Set the background
vim.o.background = 'dark'

function ColorMyPencils(color)
	color = color or 'gruvbox'
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
