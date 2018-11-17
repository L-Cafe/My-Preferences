export LANG="en_US.UTF-8"
export HOMEBREW_GITHUB_API_TOKEN="YOURTOKENHERE"
export PATH="/usr/local/sbin:$PATH"
export EDITOR="/usr/bin/vim"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Anaconda / Miniconda
export PATH=/usr/local/miniconda3/bin:"$PATH"

# Ruby
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# NodeJS
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# VSCode
alias cf='code -r $(fzf)'

# TREZOR SSH
alias ssht='trezor-agent -e ed25519 -c'

# Metasploit
export PATH="$PATH:/opt/metasploit-framework/bin"

# Other aliases
alias cat=bat
alias ping="prettyping --nolegend"
