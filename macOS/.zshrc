eval "$(/opt/homebrew/bin/brew shellenv)"

[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X" # boot up x-cmd.

eval "$(fnm env --shell zsh)" # fnm shell setup
[ -s "${HOME}/.g/env" ] && \. "${HOME}/.g/env"  # g shell setup
export PATH="$PATH:$HOME/fvm/default/bin" # fvm setup

export PATH=$PATH:~/.jsvu/bin # GoogleChromeLabs/jsvu setup
export PATH=$PATH:/opt/homebrew/opt/python@3.13/libexec/bin # 没有 conda base 的话需要一个系统默认的 python
export PATH=$PATH:$HOME/go/bin # go setup

# ls color: https://github.com/romkatv/powerlevel10k/issues/805#issuecomment-640159400
export LS_COLORS='rs=0:no=00:mi=00:mh=00:ln=01;36:or=01;31:di=01;34:ow=04;01;34:st=34:tw=04;34:pi=01;33:so=01;33:do=01;33:bd=01;33:cd=01;33:su=01;35:sg=01;35:ca=01;35:ex=01;32:'
export LSCOLORS='ExGxGxDxCxDxDxFxFxexEx' # darwin ls

# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch $(uname -m)"

eval "$(starship init zsh)" # starship setup
eval "$(lua $(brew --prefix z.lua)/share/z.lua/z.lua --init zsh echo once enhanced)" # z.lua setup
eval "$(sheldon source)" # sheldon setup

## alias
alias gitc='git config user.email EricGittaMoore@duck.com && git config user.name "Eric Moore"'
alias gls='gls -alh --color=auto' # brew install coreutils
alias l='ls -alhG'
export HOMEBREW_NO_AUTO_UPDATE=1

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
export MAMBA_EXE='/opt/homebrew/bin/mamba';
export MAMBA_ROOT_PREFIX='/opt/homebrew/Cellar/micromamba/2.3.2_1';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

# Added by coco installer
export PATH="$HOME/.local/bin:$PATH"

export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH
