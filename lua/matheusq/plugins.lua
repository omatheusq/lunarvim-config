lvim.plugins = {
  {
    'phaazon/hop.nvim',

    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  }, 
  {'lewis6991/hover.nvim'},
  {'mattn/emmet-vim'},
  {'xiyaowong/transparent.nvim'},
  {'folke/tokyonight.nvim'},
  {'rose-pine/neovim'},
  {'Mofiqul/dracula.nvim'},
  { 'jose-elias-alvarez/typescript.nvim' },
  { 'lunarvim/lunar.nvim' },
}