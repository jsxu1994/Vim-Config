" all system-wide defaults are set in $vimruntime/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

set nocompatible
filetype off

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

" Disable automatic comment insetion

" Syntax Highlight
syntax on

" About Tab Key Configure
set ts=4
set shiftwidth=4

" Show Line Numbers

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugins Start
Plugin 'VundleVim/Vundle.vim'	" Let Vundle mange Vundle
"NERD Tree Start
Plugin 'scrooloose/nerdtree'
nmap <F5> :NERDTreeToggle<cr>
"NERD Tree End
Plugin 'jiangmiao/auto-pairs'
Plugin 'davidhalter/jedi-vim'
" Plugins End
call vundle#end()
filetype plugin indent on
