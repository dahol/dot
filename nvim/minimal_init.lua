-- minimal_init.lua
-- Load lazy.nvim
vim.cmd [[packadd lazy.nvim]]

require('lazy').setup({
    -- Add copilot.lua plugin
    {
        'zbirenbaum/copilot.lua',
        event = 'InsertEnter',
        config = function()
            require('copilot').setup({
                panel = {
                    enabled = true,
                    auto_refresh = false,
                },
                suggestion = {
                    enabled = true,
                    auto_trigger = true,
                    debounce = 75,
                    keymap = {
                        accept = "<C-l>",
                        next = "<M-]>",
                        prev = "<M-[>",
                        dismiss = "<C-]>",
                    },
                },
                filetypes = {
                    yaml = true,
                    markdown = true,
                    help = true,
                    gitcommit = true,
                    gitrebase = true,
                    hgcommit = true,
                    svn = true,
                    cvs = true,
                    ["."] = true,
                },
            })
        end
    },
})

