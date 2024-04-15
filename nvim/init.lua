-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.colorscheme")
--require("plugins.core")
require("options")

-- Set transparency for all modes
vim.cmd([[highlight Normal   ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight Visual   ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight Cursor   ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight LineNr   ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight CursorLineNr   ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight SignColumn ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight CursorColumn   ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight Pmenu   ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight PmenuSel    ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight StatusLine ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight StatusLineNC   ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight VertSplit ctermbg=NONE guibg=NONE]])

-- Set transparency for terminal window
vim.cmd([[augroup TerminalTransparency]])
vim.cmd([[    autocmd!]])
vim.cmd([[    autocmd TermOpen * setlocal winblend=100]])
vim.cmd([[augroup END]])
