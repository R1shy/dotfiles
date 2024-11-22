-- nvim-cmp setup
local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED: Must specify a snippet engine
    expand = function(args)
      require('luasnip').lsp_expand(args.body)  -- For luasnip
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),  -- Previous suggestion
    ['<C-n>'] = cmp.mapping.select_next_item(),  -- Next suggestion
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),     -- Scroll up
    ['<C-f>'] = cmp.mapping.scroll_docs(4),      -- Scroll down
    ['<C-Space>'] = cmp.mapping.complete(),      -- Trigger completion
    ['<C-e>'] = cmp.mapping.close(),             -- Close the completion
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirm completion
  },
  sources = {
    { name = 'nvim_lsp' },     -- LSP
    { name = 'buffer' },       -- Current buffer
    { name = 'path' },         -- File paths
    { name = 'luasnip' },      -- Snippets
  },
})

-- LSP Setup
local lspconfig = require'lspconfig'


lspconfig.rust_analyzer.setup{
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = false;
      }
    }
  }
}


-- snippet stuff

local luasnip = require'luasnip'

-- Set up LuaSnip
luasnip.config.set_config({
  history = true,
  updateevents = "TextChanged,TextChangedI", -- Updates snippets while typing
})

-- You can add some sample snippets or load your own snippet files
require('luasnip.loaders.from_vscode').lazy_load()

