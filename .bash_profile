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
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"


########## docker ##########
# 存在するコンテナ全てを削除する
alias rm_ext_ct='docker rm -f `docker ps -a -q`'
# 生成に失敗したイメージを全て削除する
alias rm_f_img='docker rmi `docker images | awk '\''$2 == "<none>" {print $3}'\''`'
# リンクが切れているボリュームを全て削除する
alias rm_ul_vol='docker volume ls -qf dangling=true | xargs docker volume rm'


########## utility ##########
# ポートの情報を一覧する
alias showports='sudo lsof -i -n -P'
# コア数を確認する
alias checkcore='grep processor /proc/cpuinfo | wc'
