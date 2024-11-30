local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()
require('plugins')
require('luabar')
require('coc')
vim.cmd [[set number]]

-- autocomplete braces
vim.cmd [[inoremap { {}<Esc>ha]]
vim.cmd [[inoremap ( ()<Esc>ha]]
vim.cmd [[inoremap [ []<Esc>ha]]
vim.cmd [[inoremap " ""<Esc>ha]]
vim.cmd [[inoremap ' ''<Esc>ha]]
vim.cmd [[inoremap ` ``<Esc>ha]]
vim.cmd [[colorscheme tokyonight-night]]
