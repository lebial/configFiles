set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set autoindent
if has("autocmd")
    au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
      au InsertEnter,InsertChange *
          \ if v:insertmode == 'i' | 
          \   silent execute '!echo -ne "\e[5 q"' | redraw! |
          \ elseif v:insertmode == 'r' |
          \   silent execute '!echo -ne "\e[3 q"' | redraw! |
          \ endif
        au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
      endif

" default the statusline to green when entering Vim
  hi statusline guibg=green

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" system plugins
" 
Plugin 'ervandew/supertab'
Plugin 'prettier/vim-prettier', {'do': 'yarn install'}
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-repeat'
Plugin 'dyng/ctrlsf.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Coding Plugins
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'

"Syntax Plugins
""Ruby/Rails
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-cucumber'
Plugin 'thoughtbot/vim-rspec'

"Java Script
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'mattn/emmet-vim'
Plugin 'valloric/MatchTagAlways'
Plugin 'w0rp/ale'


  let g:user_emmet_settings = {
    \  'javascript.jsx' : {
      \      'extends' : 'jsx',
      \  },
    \}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set number

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
