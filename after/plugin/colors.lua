function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- the next two lines set a transparent background
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" } )
end

ColorMyPencils()
