local tools = {}
local conf = require('modules.tools.config')

-- tools['kristijanhusak/vim-dadbod-ui'] = {
--   cmd = {'DBUIToggle','DBUIAddConnection','DBUI','DBUIFindBuffer','DBUIRenameBuffer'},
--   config = conf.vim_dadbod_ui,
--   requires = {{'tpope/vim-dadbod',opt = true}}
-- }

tools['editorconfig/editorconfig-vim'] = {
  ft = { 'go','typescript','javascript','vim','rust','zig','c','cpp' }
}

-- tools['glepnir/indent-guides.nvim'] = {
--   event = 'BufReadPre *',
--   config = conf.indent_guides
-- }

-- tools['glepnir/prodoc.nvim'] = {
--   event = 'BufReadPre *'
-- }

tools['Yggdroot/indentLine'] = {
  event = 'BufReadPre *',
  config = conf.indetLine
}

tools['liuchengxu/vista.vim'] = {
  cmd = 'Vista',
  config = conf.vim_vista
}

tools['mhartington/formatter.nvim'] = {
  ft = { 'typescript','typescriptreact','lua' },
  config = conf.fomatter_nvim
}

tools['brooth/far.vim'] = {
  cmd = {'Far','Farp'},
  config = function ()
    vim.g['far#source'] = 'rg'
  end
}

tools['iamcco/markdown-preview.nvim'] = {
  ft = 'markdown',
  config = function ()
    vim.g.mkdp_auto_start = 0
  end
}

return tools