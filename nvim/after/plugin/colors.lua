function ColorMyPencils(color)
	color = color or "echidna"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

  vim.api.nvim_command("hi! LineNr ctermBg=232 ctermFg=220")
  vim.api.nvim_command("hi! CursorLine ctermBg=235")
  vim.api.nvim_command("hi! visual ctermBg=238 ctermFg=35")
  vim.api.nvim_command("hi! ColorColumn ctermBg=240")

end

ColorMyPencils()
