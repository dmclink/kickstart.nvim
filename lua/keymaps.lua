vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })

vim.keymap.set('n', '<leader>u', ':UndotreeShow<CR>')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', '"_dP', { desc = 'delete and [P]aste into void' })

vim.keymap.set('n', '<leader>y', '"+y', { desc = '[Y]ank to clipboard' })
vim.keymap.set('v', '<leader>y', '"+y', { desc = '[Y]ank to clipboard' })
vim.keymap.set('n', '<leader>Y', '"+Y', { desc = '[Y]ank entire line to clipboard' })

vim.keymap.set('n', '<leader>d', '"_d', { desc = '[D]elete into void' })
vim.keymap.set('v', '<leader>d', '"_d', { desc = '[D]elete into void' })

vim.keymap.set('n', 'Q', ':q')

vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
vim.keymap.set('n', '<leader>f', function()
  vim.lsp.buf.format()
end)

vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

vim.keymap.set('n', '<leader>r', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true, desc = 'make file e[X]ecutable' })

vim.keymap.set('i', '<C-a>', '<Nop>')

vim.keymap.set('n', '<C-t>', '<cmd>exe v:count1 . "ToggleTerm"<CR>', { silent = true })
vim.keymap.set('i', '<C-t>', '<cmd>exe v:count1 . "ToggleTerm"<CR>', { silent = true })
vim.keymap.set('t', '<C-t>', '<cmd>exe v:count1 . "ToggleTerm"<CR>', { silent = true })

vim.keymap.set('n', '<leader>ls', '<cmd>LivePreview start<CR>')
vim.keymap.set('n', '<leader>lx', '<cmd>LivePreview close<CR>')

vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

vim.keymap.set('v', '<leader>r', ':<C-u>s/\\%V<C-r>"\\%V/g<Left><Left>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>cp', ':CccPick<CR>', { desc = 'open [C]olor [P]icker' })
