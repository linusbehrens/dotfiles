-- MeanderingProgrammer/render-markdown.nvim
return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
    config = function()
        require('render-markdown').setup({
            bullet = {
                enabled = false,
                -- icons = { '●', '○', '◆', '◇' },
            },
        })
    end,
}
