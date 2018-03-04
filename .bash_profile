########## alias ##########
# ls
alias ls='ls -G'
alias ll='ls -l'

# cd
cdll()
{
  \cd "$@" && ll
}
alias cd="cdll"

# open app
alias atom='open -a /Applications/Atom.app/'


########### version management ##########
# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# rbenv
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
