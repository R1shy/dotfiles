require('pckr').add {
{"folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {}},
{"williamboman/mason.nvim"},
{'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
{'neoclide/coc.nvim', branch = 'release'}
}
