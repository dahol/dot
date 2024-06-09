-- tmux stuff
-- vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
-- vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
-- vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>")
-- vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>")

-- vim.keymap.set("n", "<leader>ba", ":%bdelete|edit #|normal`"<CR>"") -- search
vim.api.nvim_set_keymap("n", "<leader>ba", ':%bdelete<CR>:edit #<CR>:normal `"<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>pp", ":Telescope neovim-project discover<CR>")
vim.keymap.set("n", "<leader>ph", ":Telescope neovim-project history<CR>")

vim.keymap.set("n", "<leader>pl", ":bn<CR>") -- next buffer
vim.keymap.set("n", "<leader>pk", ":bp<CR>") -- previous buffer

vim.keymap.set("n", "<leader>pd", ":bd<CR>") -- close current buffer'

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", {})
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", {})
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", {})
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", {})

-- vim.keymap.set("n", "<leader>q", ":q<CR>")
