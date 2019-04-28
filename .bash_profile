export PATH="/usr/local/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home"
export ANDROID_HOME="/Users/yunfeng/Library/Android/sdk/"
export LSCOLORS=GaDaFafacafafacacaeaea
#GxBxCxDxexegedabagaced
#eadafafacafafacacaeae
logday=$(date +'%m%d'); export LOGDAY=$(date +'%m%d')

# Make ls use colors
export CLICOLOR=1
alias ls='ls -GFha'
#alias ls='ls -Fa'
#alias chrome-i="open -na 'Google Chrome' --args --allow-file-access-from-files -incognito --disable-web-security --user-data-dir"
alias dosbox="/Applications/DOSBox.app/Contents/MacOS/DOSBox"
alias plotlyvirtualenv='source ~/.virtualenvs/plotly3.3/bin/activate'

# define colors
C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"

# Show dirty state in prompt when in Git repos
export GIT_PS1_SHOWDIRTYSTATE=1

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#use code . for VSCode
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# set your prompt
#export PS1="\n$C_LIGHTGREEN\u$C_DARKGRAY@$C_BLUE\h $C_DARKGRAY: $C_LIGHTYELLOW\w\n$C_DARKGRAY\$$C_DEFAULT "
#export PS1="\[\e[36;1m\]\u@\[\e[32;1m\]\H> \[\e[0m\]"
#export PS1="\[\e[32;1m\]\u$C_DARKGRAY@\[\e[0;36m\]\h $C_DARKGRAY\W$C_LIGHTYELLOW\$(parse_git_branch) \[\e[0m$\] "

#use powerline
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


#source  ~/.bash_profile
