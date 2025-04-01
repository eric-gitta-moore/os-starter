eval "$(/opt/homebrew/bin/brew shellenv)"
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X" # boot up x-cmd.

eval "$(fnm env --shell zsh)" # fnm shell setup
[ -s "${HOME}/.g/env" ] && \. "${HOME}/.g/env"  # g shell setup
export PATH="$PATH:/Users/bytedance/fvm/default/bin" # fvm setup

export PATH=~/.jsvu/bin:$PATH # GoogleChromeLabs/jsvu setup
export PATH=$PATH:/opt/homebrew/opt/python@3.13/libexec/bin # 没有 conda base 的话需要一个系统默认的 python

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
condainit() { eval "$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"; }
# <<< conda initialize <<<


############# ohmyzsh begin
# ls color: https://github.com/romkatv/powerlevel10k/issues/805#issuecomment-640159400
export LS_COLORS='rs=0:no=00:mi=00:mh=00:ln=01;36:or=01;31:di=01;34:ow=04;01;34:st=34:tw=04;34:pi=01;33:so=01;33:do=01;33:bd=01;33:cd=01;33:su=01;35:sg=01;35:ca=01;35:ex=01;32:'
zstyle ':omz:lib:theme-and-appearance' gnu-ls yes # brew install coreutils

export ZSH="$HOME/.oh-my-zsh" # 只用个 alias 功能就行
ZSH_THEME="" # 不用 ohmyzsh 的主题，用 starship
plugins=() # 不用 ohmyzsh 的插件
source $ZSH/oh-my-zsh.sh
# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch $(uname -m)"
############# ohmyzsh end

eval "$(starship init zsh)" # starship setup
eval "$(lua $(brew --prefix z.lua)/share/z.lua/z.lua --init zsh echo once enhanced)" # z.lua setup

## alias
alias gitc='git config user.email EricGittaMoore@duck.com && git config user.name "Eric Moore"'
alias l='ls -alh'
