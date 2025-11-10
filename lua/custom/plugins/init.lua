-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'webhooked/kanso.nvim',
    lazy = false,
    priority = 1000,
  },
  {
    'mbbill/undotree',
    lazy = false,
  },
  {
    'tpope/vim-fugitive',
    lazy = false,
  },
  {
    'theprimeagen/harpoon',
    lazy = false,
  },
  {
    'airblade/vim-rooter',
    config = function()
      vim.g.rooter_patterns = { '.gitignore', '.git', 'package.json', 'MakeFile', 'go.mod', 'go.sum', 'src/' }
    end,
  },
}
