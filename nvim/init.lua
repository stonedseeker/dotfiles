-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.colorscheme")
--require("plugins.core")
require("options")

require("nvim-treesitter.configs").setup({
  ensure_installed = { "java" }, -- Add any other languages you want here
  highlight = {
    enable = true, -- false will disable the whole extension
  },
  -- Add additional configuration if needed
})

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

-- Set tab to indent 4 space characters
-- Set the tab to insert four spaces
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Map the tab key in visual mode to indent by 4 spaces
vim.api.nvim_set_keymap("v", "<Tab>", ">gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-Tab>", "<gv", { noremap = true, silent = true })
