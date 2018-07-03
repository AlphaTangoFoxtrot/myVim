filetype plugin indent on
syntax on

execute pathogen#infect()

"Set tab = 'x' amount of spaces for *.py files
autocmd BufEnter *.py set tabstop=4 shiftwidth=4 expandtab 
"Set tab = 'x' amount of spaces for *.feature files
autocmd BufEnter *.feature set tabstop=2 shiftwidth=2 expandtab

augroup vimrc_autocmds
    "Set color of highlight in each buffer for > 79 characters
    autocmd BufEnter *py highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    "Highlight every character once > 79 characters per line
    autocmd BufEnter *py match OverLength /\%79v.\+/
augroup END

"Enable numbered lines
set nu

"Case insensitive searches
set ignorecase

"Disable visual bell
set t_vb=

nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>

"Remove trailing whitespaces in .py files after saving
autocmd BufWritePre *.py %s/\s\+$//e

set autoread

"Syntax highlighting
"colorscheme slate
highlight Number ctermfg=DarkGreen
highlight String ctermfg=DarkRed
highlight Function ctermfg=LightBlue
