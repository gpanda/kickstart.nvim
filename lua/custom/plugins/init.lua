-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local g = vim.g

return {

  -- vimtex
  {
    'lervag/vimtex',
    -- check :h vimtex-default-mappings for default keys
    -- e.g. `<leader> + ll/lk/lc/lC/lv/li` etc.
    -- ll: compile in continuous mode, lk: stop compile
    -- lc: clean, lC: clean all, li: info, lv:view
    -- Don't use custom lazy keys here, otherwise the plugin won't get
    -- loaded properly. See
    -- https://github.com/lervag/vimtex/blob/fe20ab1bd82a23441ac55054afefcd60001947a2/README.md?plain=1#L64-L69
    -- use init instead of config to make sure no lazy load
    init = function()
      g.vimtex_view_method = 'zathura_simple'
      -- vg.vimtex_view_method = 'skim'
    end,
    enabled = g.vimrclevel > 3,
  },

  -- markdown preview
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && npx --yes yarn install',
    init = function()
      g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },

    keys = {
      { '<leader>mdv', '<Plug>MarkdownPreview', desc = 'MarkdownPreview' },
    },
    enabled = g.vimrclevel > 3,
  },
}
