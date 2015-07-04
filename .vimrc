set nocompatible

"syntax highlighting should always be on
syntax on

"always show status line
set laststatus=2

"hardstatus line
" adapted from http://www.plainlystated.com/2009/05/vim-statusline/
set statusline=
set statusline+=%<                  " cut at start
set statusline+=[%n%H%M%R%W]        " buffer number, and flags
set statusline+=%-40f               " relative path
set statusline+=%{&ff}               " file format
set statusline+=%=                  " seperate between right- and left-aligned
set statusline+=%y                  " file type
set statusline+=%10((%l,%v)%)       " line and column
set statusline+=%5(%P%)                " percentage of file

"highlight searches
set hlsearch

"case insensitive search
set ic

"autowrite
set aw

"line numbers on
set nu

"match braces
set sm

"don't wrap text
set nowrap

filetype plugin on
filetype indent plugin on

"if running terminal with 256 colors, use gruvbox
if has('syntax')
    syntax on
             if &term == 'xterm'
	     	set t_Co=256
	     endif

	     if &t_Co == 256
	     	colorscheme gruvbox_transparent
	     else
	     	colorscheme default
	     endif
endif


"mouse control
set mouse=a

"default tags file to current dir
set tags=.tags

"4 spaces for a tab
set tabstop=4

"autoindent
set autoindent

"allow hiding of unsaved buffers
set hidden

"syntastic
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

"" Keymappings
"clipboard handling w/ xclip
map <F6> :w !xclip<CR><CR>
map <F7> :r !xclip -o<CR>
vmap <F7> "y*

"" wildmenu
set wildmenu

"" man pager
runtime ftplugin/man.vim

augroup filetypedetect
  " Mail
  autocmd BufRead,BufNewFile *mutt-*              setfiletype mail
augroup END
