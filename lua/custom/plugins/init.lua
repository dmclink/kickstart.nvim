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
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon'):setup()
    end,
    keys = {
      {
        '<leader>A',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'haproon quick menu',
      },
      {
        '<leader>a',
        function()
          require('harpoon'):list():add()
        end,
        desc = 'mark file for harpoon',
      },
      {
        '<leader>1',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = 'harpoon to file 1',
      },
      {
        '<leader>2',
        function()
          require('harpoon'):list():select(2)
        end,
        desc = 'harpoon to file 2',
      },
      {
        '<leader>3',
        function()
          require('harpoon'):list():select(3)
        end,
        desc = 'harpoon to file 3',
      },
      {
        '<leader>4',
        function()
          require('harpoon'):list():select(4)
        end,
        desc = 'harpoon to file 4',
      },
      {
        '<leader>5',
        function()
          require('harpoon'):list():select(5)
        end,
        desc = 'harpoon to file 5',
      },
    },
  },
  {
    'airblade/vim-rooter',
    config = function()
      vim.g.rooter_patterns = { '.gitignore', '.git', 'package.json', 'MakeFile', 'go.mod', 'go.sum', 'src/' }
    end,
  },
  { 'nvim-treesitter/playground' },
  { 'nvim-mini/mini.colors', version = false },
  { 'akinsho/toggleterm.nvim', version = '*', config = true },
  { 'tpope/vim-surround' },
  {
    'uga-rosa/ccc.nvim',
    cmd = 'CccPick',
    config = function()
      local ccc = require 'ccc'
      ccc.setup {
        inputs = {
          ccc.input.hsl,
          ccc.input.rgb,
          ccc.input.cmyk,
        },
        highlighter = {
          auto_enable = true,
          lsp = true,
        },
      }
    end,
  },
  {
    'danymat/neogen',
    config = true,
    opts = {
      snippet_engine = 'luasnip',
    },
  },
}
