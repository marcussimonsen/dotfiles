return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            theme = 'hyper',
            config = {
                shortcut = {
                    {
                        desc = '󰊳 update',
                        group = '@property',
                        action = 'Lazy update',
                        key = 'u',
                    },
                    {
                        desc = ' files',
                        group = 'label',
                        action = 'Telescope find_files',
                        key = 'f',
                    },
                    {
                        desc = ' dotfiles',
                        group = 'Number',
                        action = 'cd ~/dotfiles | Telescope find_files',
                        key = '.',
                    }
                },
            }
        }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
