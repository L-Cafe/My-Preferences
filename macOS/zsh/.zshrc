[[ $TERM != "screen" ]] && exec tmux
export ZSH=/Users/x000/.oh-my-zsh

ZSH_THEME="xiong-chiamiov-plus"

DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git sublime xcode vundle tig swift rust ruby rvm rake-fast osx pod emotty extract encode64 docker cargo brew bundler battery wd brew)
source $ZSH/oh-my-zsh.sh
fpath+=~/.zfunc
wd list
