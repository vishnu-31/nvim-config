return {

  'TabbyML/vim-tabby',
  event = 'VeryLazy',
  config = function()
    vim.g.tabby_keybinding_accept = '<Tab>'
    vim.g.tabby_keybinding_trigger_or_dismiss = '<C-\\>'
    vim.g.tabby_trigger_mode = 'manual'
    vim.g.tabby_filetype_dict = {
      lua = 'stylua',
      bash = 'shellscript',
      sh = 'shellscript',
      javascript = 'eslint-lsp',
      cs = 'csharp',
      objc = 'objective-c',
      objcpp = 'objective-cpp',
      make = 'makefile',
      cuda = 'cuda-cpp',
      text = 'plaintext',
    }
  end,
}, -- Use `opts = {}` to force a plugin to be loaded.
--
--  This is equivalent to:
--    require('Comment').setup({})
-- "gc" to comment visual regions/lines
{
  'numToStr/Comment.nvim',
  opts = {
    ---Add a space b/w comment and the line
    padding = true,
    ---Whether the cursor should stay at its position
    sticky = true,
    ---Lines to be ignored while (un)comment
    ignore = nil,
    ---LHS of toggle mappings in NORMAL mode
    toggler = {
      ---Line-comment toggle keymap
      line = 'gcc',
      ---Block-comment toggle keymap
      block = 'gbc',
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
      ---Line-comment keymap
      line = 'gc',
      ---Block-comment keymap
      block = 'gb',
    },
    ---LHS of extra mappings
    extra = {
      ---Add comment on the line above
      above = 'gcO',
      ---Add comment on the line below
      below = 'gco',
      ---Add comment at the end of line
      eol = 'gcA',
    },
    ---Enable keybindings
    ---NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
      ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
      basic = true,
      ---Extra mapping; `gco`, `gcO`, `gcA`
      extra = true,
    },
    ---Function to call before (un)comment
    pre_hook = nil,
    ---Function to call after (un)comment
    post_hook = nil,
  },
}
