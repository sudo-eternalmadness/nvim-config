return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local opt = require('nvim-treesitter')
      opt.setup {
        -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
        install_dir = vim.fn.stdpath('data') .. '/site'
      }
      opt.install { 'python', 'javascript', 'lua', 'c', 'typescript', 'yaml', 'markdown'}
    end
  }
}
