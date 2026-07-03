vim.g.mapleader = " "

vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format({ async = true }) end, { desc = 'Format buffer' })

