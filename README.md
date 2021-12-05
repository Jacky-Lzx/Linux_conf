# Linux configurations

Write once, debug everywhere.

## Installation guide

## Prerequisite

1. oh my zsh
1. powerlevel10k
    (theme for oh my zsh)

1. brew
    (prerequisite of lazygit and git-delta)
    quickgit: change the source in ./install.sh
    fail and fix: see <https://www.jianshu.com/p/b2de788c3c6d>
1. git-delta
    (prerequisite of lazygit)
1. lazygit

1. neovim
    (version >= 0.5.0)
1. node.js
    (prerequisite of coc extensions)
1. ranger
1. nerd fonts
    (Sauce Code Pro Semibold Nerd Font for me)
1. ranger\_devicon
    (fancy icons for neovim and ranger)
1. fdfind
    (prerequisite of fzf)
1. fzf
    (fuzzy file finder)

## Cheat sheet

### undotree

`nnoremap <leader>ut` - open the undotree and focus

### easymotion

`<leader><leader>s{char}` - find `{char}`

### surround

### coc.nvim

#### general

`xmap <leader>a <Plug>(coc-codeaction-selected)`

#### coc-spell-checker

`vmap <leader>a` - show code actions

#### coc-marketplace

`:CocList marketplace`

#### coc-lists

`:CocList <TAB>`

#### coc-translator

`nmap <leader>tr` - translate a word

`vmap <leader>tr` - translate selected word

