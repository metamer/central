### Standard Bash Profile ###

#custom prompt
#export PS1="\u@\h: \w > "
function EXT_COLOR () { echo -ne "\e[38;5;$1m"; }
function CLOSE_COLOR () { echo -ne "\e[m"; }
export PS1='\[`EXT_COLOR 187`\]\u@\h\[`CLOSE_COLOR`\]\[`EXT_COLOR 174`\] \w \$ \[`CLOSE_COLOR`\] > '
export LS_COLORS='di=38;5;108:fi=00:*svn-commit.tmp=31:ln=38;5;116:ex=38;5;186'
# Set vi as default command line editor
set -o vi
export EDITOR=vim

# Add ~/bin to $PATH
export PATH=$PATH:~/bin
# Add ~/pbin to $PATH
export PATH=$PATH:~/pbin
export PATH=$PATH:~/local/bin

#allow colors in terminal
#export CLICOLOR=TRUE

#add colors to grep results
alias grep='grep --color=auto'

alias ls='ls --color=auto'
alias vi='vim'
alias cvid='cvlc --quiet --vout caca'
alias indicterm='urxvt -fn "xft:Siddhanta:antialias=false:size=14,xft:Unifont:antialias=false" '
alias dvorak='setxkbmap dvorak -option ctrl:nocaps'
alias uskb='setxkbmap us'

export LYNX_CFG=~/.lynx/lynx.cfg
export LYNX_LSS=~/.lynx/lynx.lss
export NNTPSERVER=news.solani.org

export PYTHONPATH=$PYTHONPATH:~/local/lib

fortune -c | cowsay -f tux

eval $(keychain --eval)
#export WEECHAT_PASSPHRASE=$(pass weechat.sec)
