
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ls color: https://github.com/romkatv/powerlevel10k/issues/805#issuecomment-640159400
export LS_COLORS='rs=0:no=00:mi=00:mh=00:ln=01;36:or=01;31:di=01;34:ow=04;01;34:st=34:tw=04;34:pi=01;33:so=01;33:do=01;33:bd=01;33:cd=01;33:su=01;35:sg=01;35:ca=01;35:ex=01;32:'
export LSCOLORS='ExGxGxDxCxDxDxFxFxexEx' # darwin ls

# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch $(uname -m)"

eval "$(starship init zsh)"
eval "$(sheldon source)"
eval "$(zoxide init zsh)"

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

## alias
alias gitc='git config user.email EricGittaMoore@duck.com && git config user.name "Eric Moore"'
alias l='ls -alhG'
alias e='eza -alh'
export HOMEBREW_NO_AUTO_UPDATE=1

export PATH="$HOME/.local/bin:$PATH"
