return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = (function()
        local telescope_builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>vh', telescope_builtin.help_tags, {})
        vim.keymap.set('n', '<leader>tf', telescope_builtin.find_files, {})
        vim.keymap.set('n', '<leader>to', telescope_builtin.oldfiles, {})
        vim.keymap.set('n', '<leader>tu', telescope_builtin.resume, {})
        vim.keymap.set('n', '<C-p>', telescope_builtin.git_files, {})
        vim.keymap.set('n', '<leader>gc', telescope_builtin.git_commits, {})
        vim.keymap.set('n', '<leader>gb', telescope_builtin.git_branches, {})
        vim.keymap.set('n', '<leader>tg', telescope_builtin.live_grep, {})
        vim.keymap.set({ 'n', 'v' }, '<leader>ts', telescope_builtin.grep_string, {})
    end)

}
