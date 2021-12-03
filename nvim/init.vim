" ================================================================================
"
"                               neovim config file
"                                                                     by Zexi.Li
" ================================================================================
" --------------------------------------------------------------------------------
" |                                                                              |
" |                                   VIM-PLUG                                   |
" |                                                                              |
" --------------------------------------------------------------------------------
    call plug#begin('~/vimfiles/plugged')
        " -----------------------
        " --- status bar
        " -----------------------
        Plug 'vim-airline/vim-airline' " ✓
        Plug 'vim-airline/vim-airline-themes' " ✓ Together with vim-airline
        " Plug 'itchyny/lightline.vim'
        " Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
        " Plug 'kyazdani42/nvim-web-devicons' " lua; requited to display icons in galaxyline

        " -----------------------
        " --- colorscheme
        " -----------------------
        Plug 'rktjmp/lush.nvim' " ✓ required by gruvbox
        Plug 'ellisonleao/gruvbox.nvim' " ✓
        " Plug 'artanikin/vim-synthwave84'
        Plug 'luochen1990/rainbow' " ✓ rainbow brackets

        " -----------------------
        " --- functional
        " -----------------------
        " Plug 'preservim/nerdtree'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'easymotion/vim-easymotion' " ✓
        Plug 'Yggdroot/indentLine' " ✓
        Plug 'mbbill/undotree' " ✓

        Plug 'blackcauldron7/surround.nvim'
        "
        "
        Plug 'dstein64/vim-startuptime' " ✓
        " Plug 'voldikss/vim-floaterm' " floating terminal. not used since using terminal
        Plug 'mhinz/vim-startify' " ✓ the startup window showing MRU files
        " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " we recommend updating the parsers on update
        " Plug 'SirVer/ultisnips' " track the engine.
        Plug 'honza/vim-snippets' " ✓ Snippets are separated from the engine.

        Plug 'ryanoasis/vim-devicons' " ✓
        Plug 'junegunn/vim-peekaboo' " ✓ show registers when pasting
    call plug#end()
    " lua require('plugins') " packer

" --------------------------------------------------------------------------------
" |                                                                              |
" |                                  APPEARANCE                                  |
" |                                                                              |
" --------------------------------------------------------------------------------

    " -----------------------
    " --- colorscheme
    " -----------------------
        syntax on " syntax
        set background=dark
        colorscheme gruvbox
        " colorscheme synthwave84
        " set guifont=Consolas:h13:cANSI:qDRAFT
        " highlight Search guibg=peru
        set t_Co=256
        if has("termguicolors")
            set termguicolors
        endif " set true color
    " -----------------------
    " --- appearance
    " -----------------------
        set list
        set listchars=trail:▫ " show trailing whitespaces

        " set cursorcolumn
        set cursorline " show cursor location
        set conceallevel=0
        " let g:tex_conceal = 0 " cancel the conceal for latex file
        set title " change the terminal's title

        set ruler " show the current row and column
        set number " show line numbers
        set relativenumber " show line numbers relative to current line
        set nowrap " no line wrap
        set showcmd " display incomplete commands
        set showmode " display current modes
        set showmatch " jump to matches when entering parentheses
        set matchtime=2 " tenths of a second to show the matching parenthesis

        set scrolloff=3 " keep lines when scrolling up and down
        set sidescroll=1 " scroll steps when scrolling left and right

" --------------------------------------------------------------------------------
" |                                                                              |
" |                                  FUNCTIONS                                   |
" |                                                                              |
" --------------------------------------------------------------------------------
        set foldmethod=indent
        set conceallevel=2 " set conceal level to hide special characters
        set concealcursor= " the characters on current line should not be concealed. can be changed to inc
        set mouse=a " enable mouse
        " TODO: not sort yet
        let mapleader = ' ' " set leader key to <space>
        set history=2000 " history : how many lines of history VIM has to remember

        filetype on " filetype
        " Enable filetype plugins
        filetype plugin on
        filetype indent on

        " base
        set nocompatible " don't bother with vi compatibility
        set autoread " reload files when changed on disk, i.e. via `git checkout`
        set magic " for regular expressions turn magic on
        set nobackup " do not keep a backup file

        set errorbells
        set novisualbell

        set smartindent
        set tabstop=4
        set softtabstop=4
        set expandtab " change tab to spaces
        set smarttab
        set shiftround
        set shiftwidth=4

        " encodings
        " set encoding=utf-8 " no need to set this as neovim uses it by default
        set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
        set termencoding=utf-8
        set ffs=unix,dos,mac
        set formatoptions+=m
        set formatoptions+=B

        " set backspace=indent,eol,start " to solve the problem that backspace cannot delete things (note CTRL-I is the same as <Tab>)
        set ignorecase
        set smartcase
        set hlsearch " highlight search results when searching
        set incsearch " find matches when spelling

        set autochdir " run command under current dir

" --------------------------------------------------------------------------------
" |                                                                              |
" |                                   KEYMAP                                     |
" |                                                                              |
" --------------------------------------------------------------------------------


" --------------------------------------------------------------------------------
" |                                                                              |
" |                                   PLUGINS                                    |
" |                                                                              |
" --------------------------------------------------------------------------------
    " -----------------------
    " --- plug.ultisnips
    " -----------------------
        " " use coc-snippets instead for showing in float window "
        " let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips'] " specify the path, to just load snippets under this file for speedup.
        " " Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
        " " - https://github.com/Valloric/YouCompleteMe
        " " - https://github.com/nvim-lua/completion-nvim
        " let g:UltiSnipsExpandTrigger="<c-/>"
        " let g:UltiSnipsExpandTrigger="<c-_>"
        " let g:UltiSnipsJumpForwardTrigger="<c-l>"
        " let g:UltiSnipsJumpBackwardTrigger="<c-h>"
        " let g:UltiSnipsJumpForwardTrigger="<tab>"
        " let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
        " " If you want :UltiSnipsEdit to split your window.
        " let g:UltiSnipsEditSplit="vertical"
        " let g:UltiSnipsListSnippets="<M-/>"

    " -----------------------
    " --- plug.easymotion
    " -----------------------
        let g:EasyMotion_smartcase = 1 " turn on case-insensitive feature

    " -----------------------
    " --- plug.startify
    " -----------------------
        let g:startify_bookmarks = [{'h': '~/.config/nvim/init.vim'}, '~/.tmux.conf', '~/.zshrc'] " set bookmarks to open
        let g:startify_files_number = 5 " set number of MRU files
        " let g:startify_custom_header =
        "       \ 'startify#center(startify#fortune#cowsay())'
        "       " \ 'startify#center(startify#fortune#boxed())'

    " -----------------------
    " --- plug.indentline
    " -----------------------
        " let g:indentLine_char = '│' " set single character to show indentation
        let g:indentLine_char_list = ['│', '¦', '┆', '┊'] " set multiple characters to display different level of indentation
        let g:indentLine_setConceal = 0 " don't change current conceal setting
        " let g:indentLine_concealcursor = ''
        " let g:indentLine_conceallevel = 2

    " -----------------------
    " --- plug.surround
    " -----------------------
        lua require"surround".setup{}

    " -----------------------
    " --- plug.floaterm
    " -----------------------
        " nnoremap \t  :FloatermToggle<CR>
        " noremap! \t  <Esc>:FloatermToggle<CR>
        " tnoremap \t  <C-\><C-n>:FloatermToggle<CR>

    " -----------------------
    " --- plug.airline
    " -----------------------
        let g:airline#extensions#tabline#enabled = 1

    " -----------------------
    " --- plug.rainbow
    " -----------------------
        let g:rainbow_active = 1 " activate rainbow brackets
        " au FileType c,cpp,objc,objcpp call rainbow#load() " activate raibow brackets for specific files
        let g:rainbow_load_separately = [
                \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
                \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
                \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
                \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
            \ ]
        let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
        let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

    " -----------------------
    " --- plug.undotree
    " -----------------------
        nnoremap <leader>ut :UndotreeToggle<CR>:UndotreeFocus<CR>
        " nnoremap <leader>utf :UndotreeFocus<CR>
        " " Set presistent undo tree by storing it in a file
        " "     TODO: delete folder periodically to save space
        if has("persistent_undo")
           let target_path = expand('~/.config/nvim/tmp/undo')
            if !isdirectory(target_path)
                call mkdir(target_path, "p", 0700)
            endif
            let &undodir=target_path
            set undofile
        endif

    " -----------------------
    " --- plug.coc
    " -----------------------
        " let g:coc_global_extensions = [
        "             \ 'coc-json', 'coc-git', 'coc-clangd', 'coc-cmake', 'coc-highlight', 'coc-java', 'coc-markdownlint', 'coc-pyright', 'coc-sh', 'coc-texlab', 'coc-vimlsp',
        "             \ 'coc-marketplace',
        "             \ 'coc-spell-checker',
        "             \ 'coc-snippets',
        "             \ ] " add extensions automatically on new computers
        " let g:coc_global_extensions = [
        "             \ 'coc-clangd', 'coc-cmake', 'coc-java', 'coc-markdownlint', 'coc-pyright', 'coc-sh',
        "             \ ] " add extensions automatically on new computers
        let g:coc_global_extensions = [
                    \ 'coc-vimlsp',
                    \ 'coc-highlight',
                    \ 'coc-json',
                    \ 'coc-marketplace',
                    \ 'coc-spell-checker',
                    \ 'coc-snippets',
                    \ 'coc-texlab',
                    \ 'coc-lists',
                    \ 'coc-git',
                    \ 'coc-pairs',
                    \ 'coc-clangd',
                    \ 'coc-translator',
                    \ ] " add extensions automatically on new computers
        " coc-explorer
        " coc-translator

        " " TextEdit might fail if hidden is not set.
        " set hidden

        " Some servers have issues with backup files, see #649.
        " set nobackup
        " set nowritebackup

        " Give more space for displaying messages.
        " set cmdheight=2

        " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
        set updatetime=300

        " Don't pass messages to |ins-completion-menu|.
        set shortmess+=c

        " Always show the signcolumn, otherwise it would shift the text each time diagnostics appear/become resolved.
        set signcolumn=yes

        " Use tab for trigger completion with characters ahead and navigate.
        " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
        " other plugin before putting this into your config.
        inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
        inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

        function! s:check_back_space() abort
            let col = col('.') - 1
            return !col || getline('.')[col - 1]  =~# '\s'
        endfunction

        " Use <c-space> to trigger completion.
        inoremap <silent><expr> <c-space> coc#refresh()

        " Make <CR> auto-select the first completion item and notify coc.nvim to
        " format on enter, <cr> could be remapped by other vim plugin
        inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                                    \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

        " Use `[g` and `]g` to navigate diagnostics
        " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
        nmap <silent> [g <Plug>(coc-diagnostic-prev)
        nmap <silent> ]g <Plug>(coc-diagnostic-next)

        " GoTo code navigation.
        nmap <silent> gd <Plug>(coc-definition)
        nmap <silent> gy <Plug>(coc-type-definition)
        nmap <silent> gi <Plug>(coc-implementation)
        nmap <silent> gr <Plug>(coc-references)

        " Use K to show documentation in preview window.
        nnoremap <silent> K :call <SID>show_documentation()<CR>

        function! s:show_documentation()
            if (index(['vim','help'], &filetype) >= 0)
                execute 'h '.expand('<cword>')
            elseif (coc#rpc#ready())
                call CocActionAsync('doHover')
            else
                execute '!' . &keywordprg . " " . expand('<cword>')
            endif
        endfunction

        " Highlight the symbol and its references when holding the cursor.
        autocmd CursorHold * silent call CocActionAsync('highlight')

        " Symbol renaming.
        nmap <leader>rn <Plug>(coc-rename)

        " Formatting selected code.
        xmap <leader>f  <Plug>(coc-format-selected)
        " nmap <leader>f  <Plug>(coc-format-selected)

        augroup mygroup
            autocmd!
            " Setup formatexpr specified filetype(s).
            autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
            " Update signature help on jump placeholder.
            autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
        augroup end

        " Applying codeAction to the selected region.
        " Example: `<leader>aap` for current paragraph
        xmap <leader>a  <Plug>(coc-codeaction-selected)
        " nmap <leader>a  <Plug>(coc-codeaction-selected)

        " Remap keys for applying codeAction to the current buffer.
        " nmap <leader>ac  <Plug>(coc-codeaction)
        " Apply AutoFix to problem on the current line.
        xmap <leader>qf  <Plug>(coc-fix-current)
        " nmap <leader>qf  <Plug>(coc-fix-current)

        " Map function and class text objects
        " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
        xmap if <Plug>(coc-funcobj-i)
        omap if <Plug>(coc-funcobj-i)
        xmap af <Plug>(coc-funcobj-a)
        omap af <Plug>(coc-funcobj-a)
        xmap ic <Plug>(coc-classobj-i)
        omap ic <Plug>(coc-classobj-i)
        xmap ac <Plug>(coc-classobj-a)
        omap ac <Plug>(coc-classobj-a)

        " Remap <C-f> and <C-b> for scroll float windows/popups.
        if has('nvim-0.4.0') || has('patch-8.2.0750')
            nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
            nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
            inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
            inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
            vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
            vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
        endif

        " Use CTRL-S for selections ranges.
        " Requires 'textDocument/selectionRange' support of language server.
        nmap <silent> <C-s> <Plug>(coc-range-select)
        xmap <silent> <C-s> <Plug>(coc-range-select)

        " Add `:Format` command to format current buffer.
        command! -nargs=0 Format :call CocAction('format')

        " Add `:Fold` command to fold current buffer.
        command! -nargs=? Fold :call     CocAction('fold', <f-args>)

        " Add `:OR` command for organize imports of the current buffer.
        command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

        " Add (Neo)Vim's native statusline support.
        " NOTE: Please see `:h coc-status` for integrations with external plugins that
        " provide custom statusline: lightline.vim, vim-airline.
        " set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

        " let g:airline#extensions#coc#enabled = 0
        " let airline#extensions#coc#error_symbol = 'Error:'
        " let airline#extensions#coc#warning_symbol = 'Warning:'
        " let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
        " let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

        " Mappings for CoCList
        " Show all diagnostics.
        nnoremap <silent><nowait> \a  :<C-u>CocList diagnostics<cr>
        " Manage extensions.
        nnoremap <silent><nowait> \e  :<C-u>CocList extensions<cr>
        " Show commands.
        nnoremap <silent><nowait> \c  :<C-u>CocList commands<cr>
        " Find symbol of current document.
        nnoremap <silent><nowait> \o  :<C-u>CocList outline<cr>
        " Search workspace symbols.
        nnoremap <silent><nowait> \s  :<C-u>CocList -I symbols<cr>
        " Do default action for next item.
        nnoremap <silent><nowait> \j  :<C-u>CocNext<CR>
        " Do default action for previous item.
        nnoremap <silent><nowait> \k  :<C-u>CocPrev<CR>
        " Resume latest coc list.
        nnoremap <silent><nowait> \p  :<C-u>CocListResume<CR>

        " " used for showing recommendations of coc-spell-checker
        " vmap <silent><nowait> <leader>a <Plug>(coc-codeaction-selected)
        " Use <leader>aw instead

        " -----------------------
        " --- coc.snippet
        " -----------------------
            " Use <C-j> for select text for visual placeholder of snippet.
            imap <C-l> <Plug>(coc-snippets-expand)
            vmap <C-j> <Plug>(coc-snippets-select)
            " Use <C-j> for jump to next placeholder, it's default of coc.nvim
            " let g:coc_snippet_next = '<c-j>'
            let g:coc_snippet_next = '<c-l>'
            " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
            " let g:coc_snippet_prev = '<c-k>'
            let g:coc_snippet_prev = '<c-h>'
            " Use <C-j> for both expand and jump (make expand higher priority.)
            imap <C-j> <Plug>(coc-snippets-expand-jump)
            let g:snips_author = 'Zexi Li'

        " -----------------------
        " --- coc.actions
        " -----------------------
            " Remap for do codeAction of selected region
            " function! s:cocActionsOpenFromSelected(type) abort
            "   execute 'CocCommand actions.open ' . a:type
            " endfunction
            " xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
            " nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

        " -----------------------
        " --- coc.vimlsp
        " -----------------------
            let g:markdown_fenced_languages = [
                \ 'vim',
                \ 'help'
                \]

        " -----------------------
        " --- coc.highlight
        " -----------------------
            " autocmd CursorHold * silent call CocActionAsync('highlight')

        " -----------------------
        " --- coc.translator
        " -----------------------
            " NOTE: do NOT use `nore` mappings
            " popup
            nmap <Leader>tr <Plug>(coc-translator-p)
            vmap <Leader>tr <Plug>(coc-translator-pv)
            " echo
            " nmap <Leader>e <Plug>(coc-translator-e)
            " vmap <Leader>e <Plug>(coc-translator-ev)
            " replace
            " nmap <Leader>r <Plug>(coc-translator-r)
            " vmap <Leader>r <Plug>(coc-translator-rv)

" --------------------------------------------------------------------------------
" |                                                                              |
" |                                     TEMP                                     |
" |                                                                              |
" --------------------------------------------------------------------------------
    " nnoremap <leader>ld :source ~/.config/nvim/init.vim<CR>
    " TODO: some plugins change the setting
        " set signcolumn=auto:4
    " autocmd CursorHold * silent call CocActionAsync('highlight')
