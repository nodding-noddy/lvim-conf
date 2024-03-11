-- Copy apsolute path of a file in an open buffer.
vim.api.nvim_create_user_command("CpAp", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

-- Copy relative path of a file in an open buffer.
vim.api.nvim_create_user_command("CpRp", function()
    local path = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
    vim.api.nvim_call_function("setreg", {"+", path}) 
    vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

-- Copy current buffer's filename
vim.api.nvim_create_user_command("CpFn", function()
    local fileName = vim.fn.expand("%:t")
    vim.fn.setreg("+", fileName)
    vim.notify('Filename Copied "' .. fileName .. '" to the clipboard!')
end, {})
