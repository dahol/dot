
-- copilot stuff
local function SuggestOneCharacter()
    local suggestion = vim.fn['copilot#Accept']("")
    local bar = vim.fn['copilot#TextQueuedForInsertion']()
    return bar:sub(1, 1)
end
local function SuggestOneWord()
    local suggestion = vim.fn['copilot#Accept']("")
    local bar = vim.fn['copilot#TextQueuedForInsertion']()
    return vim.fn.split(bar, [[[ .]\zs]])[1]
end

vim.keymap.set("i", "<C-h>", SuggestOneCharacter, { expr = true })
vim.keymap.set("i", "<C-g>", SuggestOneWord, { expr = true })

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)           -- open ex mode
vim.keymap.set("n", "<leader>gg", vim.cmd.LazyGit)      -- open LazyGit
vim.keymap.set("n", "<leader>gl", ":GlLog<CR>")         -- git log
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")

-- tmux stuff
vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>")


-- vim.keymap.set("n", "<leader>ba", ":%bdelete|edit #|normal`"<CR>"") -- search
vim.api.nvim_set_keymap('n', '<leader>ba', ':%bdelete<CR>:edit #<CR>:normal `"<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>pp", ":Telescope neovim-project discover<CR>")
vim.keymap.set("n", "<leader>ph", ":Telescope neovim-project history<CR>")

vim.keymap.set("n", "<leader>pl", ":bn<CR>") -- next buffer
vim.keymap.set("n", "<leader>pk", ":bp<CR>") -- previous buffer

vim.keymap.set("n", "<leader>pd", ":bd<CR>") -- close current buffer'

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "C-r", "hy:%s/<C-r>h//gc<left><left><left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/daniel/packer.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
