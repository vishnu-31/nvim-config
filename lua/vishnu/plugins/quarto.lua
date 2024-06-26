return {
  {
    'quarto-dev/quarto-nvim',
    dependencies = {
      'jmbuhr/otter.nvim',
      'neovim/nvim-lspconfig',
    },
    config = function()
      require('quarto').setup {
        lspFeatures = {
          enabled = true,
          languages = { 'r', 'python', 'julia' },
          diagnostics = {
            enabled = true,
            triggers = { 'BufWrite' },
          },
          completion = { enabled = true },
        },
      }
    end,
  },
  { 'jpalardy/vim-slime' },
  'ekickx/clipboard-image.nvim',
}
