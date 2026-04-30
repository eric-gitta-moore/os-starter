
# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"

eval "$(/opt/homebrew/bin/brew shellenv)"

# ls color: https://github.com/romkatv/powerlevel10k/issues/805#issuecomment-640159400
export LS_COLORS='rs=0:no=00:mi=00:mh=00:ln=01;36:or=01;31:di=01;34:ow=04;01;34:st=34:tw=04;34:pi=01;33:so=01;33:do=01;33:bd=01;33:cd=01;33:su=01;35:sg=01;35:ca=01;35:ex=01;32:'
export LSCOLORS='ExGxGxDxCxDxDxFxFxexEx' # darwin ls

# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch $(uname -m)"

eval "$(starship init zsh)"
eval "$(sheldon source)"
eval "$(zoxide init zsh)"

## alias
alias gitc='git config user.email EricGittaMoore@duck.com && git config user.name "Eric Moore"'
alias gls='gls -alh --color=auto' # brew install coreutils
alias l='ls -alhG'
alias e='eza -alh'
export HOMEBREW_NO_AUTO_UPDATE=1

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
export MAMBA_EXE='/opt/homebrew/bin/mamba';
export MAMBA_ROOT_PREFIX='/Users/bytedance/mamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export PATH=$PATH:~/.jsvu/bin # GoogleChromeLabs/jsvu setup
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:/opt/homebrew/opt/curl/bin:$PATH"


# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"

