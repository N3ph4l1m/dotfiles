--[[ return {
        'rose-pine/neovim',
        --		as = 'rose-pine',
        priority = 1000,
        config = function()
            vim.cmd('colorscheme rose-pine')
        end,
 }]]--

 return {
  {
    "bluz71/vim-nightfly-guicolors",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme nightfly]])
    end,
  },
}
