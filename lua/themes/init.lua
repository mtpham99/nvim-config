-- Themes
return {
  -- Moonfly (default)
  {
    'bluz71/vim-moonfly-colors',
    lazy = false,
    config = function()
      vim.cmd.colorscheme('moonfly')
    end
  },

  -- Transparency
  {
    'xiyaowong/transparent.nvim',
    lazy = false,
    config = function()
      -- Enable Transparency
      require('transparent').toggle(true)
    end
  },

  -- Other themes to be lazy loaded if wanted

  -- Tokyonight
  {
    'folke/tokyonight.nvim',
    lazy = true,
  },

  -- Onedark
  {
    'navarasu/onedark.nvim',
    lazy = true,
  },

  -- Rosepine
  {
    'rose-pine/neovim',
    lazy = true,
  },

  -- Dracula
  {
    'Mofiqul/dracula.nvim',
    lazy = true,
  },

}
