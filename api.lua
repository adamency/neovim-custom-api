-- Print content of a register as vimscript code (in new line at current position) to use in neovim **vimscript** configuration (e.g. after `let @a=`)
function DumpRegisterAsVimscript(register)
  local reg_content = vim.fn.getreg(register)
  reg_content = reg_content:gsub("\n", "\\n")
  reg_content = reg_content:gsub("\"", "\\\"")
  vim.fn.append(".", reg_content)
end

