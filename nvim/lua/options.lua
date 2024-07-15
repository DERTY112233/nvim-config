require "nvchad.options"

-- add yours here!
-- require'lspconfig'.asmlsp.setup{}
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
require("ccls").setup({ filetypes = {"c", "cpp", "opencl"} })
