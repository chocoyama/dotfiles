# 環境変数
export LANG=ja_JP.UTF-8

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# 直前のコマンドの重複を削除
setopt hist_ignore_dups
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# 同時に起動したzshの間でヒストリを共有
setopt share_history

# 補完機能を有効にする
autoload -Uz compinit
compinit -u
if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi
# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完候補を詰めて表示
setopt list_packed
# 補完候補一覧をカラー表示
zstyle ':completion:*' list-colors ''

# コマンドのスペルを訂正
setopt correct
# ビープ音を鳴らさない
setopt no_beep

# prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd() { vcs_info }
PROMPT='%m:%F{green}%~%f %n %F{yellow}$%f '
RPROMPT='${vcs_info_msg_0_}'

# alias
alias ls='ls -aF'
alias ll='ls -l'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias cat='cat -n'
alias less='less -NM'
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad


########## alias ##########
# ls
# alias ls='ls -G'
# alias ll='ls -l'

# cd
cdll()
{
  \cd "$@" && ll
}
alias cd="cdll"

# open app
alias atom='open -a /Applications/Atom.app/'


########### version management ##########
# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"


########## docker ##########
# 存在するコンテナ全てを削除する
alias remove_exists_container='docker rm -f `docker ps -a -q`'
# 生成に失敗したイメージを全て削除する
alias remove_failed_images='docker rmi `docker images | awk '\''$2 == "<none>" {print $3}'\''`'
# リンクが切れているボリュームを全て削除する
alias remove_uninked_volumes='docker volume ls -qf dangling=true | xargs docker volume rm'


########## utility ##########
