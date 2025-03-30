eval "$(/opt/homebrew/bin/brew shellenv)"
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(fnm env --shell zsh)"
[ -s "${HOME}/.g/env" ] && \. "${HOME}/.g/env"  # g shell setup
[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X" # boot up x-cmd.

export PATH=~/.jsvu/bin:$PATH
export PATH="$PATH:/Users/bytedance/fvm/default/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
condainit() {
    __conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
            . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
        else
            export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
        fi
    fi
    unset __conda_setup
}
# <<< conda initialize <<<

eval "$(starship init zsh)"
eval "$(lua $(brew --prefix z.lua)/share/z.lua/z.lua --init zsh echo once enhanced)"

## alias
alias gitc='git config user.email EricGittaMoore@duck.com && git config user.name "Eric Moore"'
alias l='ls -alh'
