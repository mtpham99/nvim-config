-- Vimtex
return {
    'lervag/vimtex',
    lazy = false,

    config = function()
        vim.g.vimtex_view_general_viewer = 'okular'
        vim.g.vimtex_compiler_method = 'latexmk'

        local wk = require('which-key')
        wk.register({
            l = {
                name = '[L]atex',
                L = { "<Cmd>update<CR><Cmd>VimtexCompileSelected<CR>", "Vimtex compile selected" },
                i = { "<Cmd>VimtexInfo<CR>", "Vimtex info" },
                I = { "<Cmd>VimtexInfo!<CR>", "Vimtex info full" },
                t = { "<Cmd>VimtexTocOpen<CR>", "Vimtex TOC" },
                T = { "<Cmd>VimtexTocToggle<CR>", "Vimtex toggle TOC" },
                q = { "<Cmd>VimtexLog<CR>", "Vimtex log" },
                v = { "<Cmd>VimtexView<CR>", "Vimtex view" },
                r = { "<plug>(Vimtex-reverse-search)", "Vimtex reverse search" },
                k = { "<Cmd>VimtexStop<CR>", "Vimtex stop" },
                K = { "<Cmd>VimtexStopAll<CR>", "Vimtex stop all" },
                e = { "<Cmd>VimtexErrors<CR>", "Vimtex errors" },
                o = { "<Cmd>VimtexCompileOutput<CR>", "Vimtex compille output" },
                g = { "<Cmd>VimtexStatus<CR>", "Vimtex status" },
                G = { "<Cmd>VimtexStatus!<CR>", "Vimtex full status" },
                c = { "<Cmd>VimtexClean<CR>", "Vimtex clean" },
                C = { "<Cmd>VimtexClean!<CR>", "Vimtex full clean" },
                x = { "<Cmd>VimtexReload<CR>", "Vimtex reload" },
                X = { "<Cmd>VimtexReloadState<CR>", "Vimtex reload state" },
                m = { "<Cmd>VimtexImapsList<CR>", "Vimtex input maps list" },
                s = { "<Cmd>VimtexToggleMain<CR>", "Vimtex toggle main" },
                a = { "<Cmd>VimtexContextMenu<CR>", "Vimtex context menu" },
            }
        }, { prefix = '<leader>' })
    end
}
