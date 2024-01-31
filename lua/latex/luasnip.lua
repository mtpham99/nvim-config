-- Luasnip
return {
    'L3MON4D3/LuaSnip',
    version = 'v2.*',
    dependencies = {
        'hrsh7th/nvim-cmp',
        'saadparwaiz1/cmp_luasnip',
    },
    build = 'make install_jsregex',
    cond = function()
        return vim.fn.executable 'make' == 1
    end,

    config = function()
        local luasnip = require('luasnip')
        local cmp = require('cmp')

        luasnip.setup({
            enable_autosnippets = true,
            store_selection_keys = '<Tab>',
        })

        local has_words_before = function()
            unpack = unpack or table.unpack
            local line, col = unpack(vim.api.nvim_win_get_cursor(0))
            return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
        end

        cmp.setup({
            mapping = {
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    elseif has_words_before() then
                        cmp.complete()
                    else
                        fallback()
                    end
                end, { "i", "s" }),

                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            },
        })

        require('luasnip.loaders.from_lua').lazy_load({ paths = './snippets' })
    end
}
