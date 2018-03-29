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
alias ty_rm_ext_ct='docker rm -f `docker ps -a -q`'
# 生成に失敗したイメージを全て削除する
alias ty_rm_f_img='docker rmi `docker images | awk '\''$2 == "<none>" {print $3}'\''`'
# リンクが切れているボリュームを全て削除する
alias ty_rm_ul_vol='docker volume ls -qf dangling=true | xargs docker volume rm'


########## utility ##########
# ポートの情報を一覧する
alias ty_show_ports='sudo lsof -i -n -P'
alias ty_show_wait_ports='ss -lnp'
# コア数を確認する
alias ty_show_core='grep processor /proc/cpuinfo | wc'
# ファイアウォールの設定を確認する(IPv4)
alias ty_show_firewall='iptables -nv -L'
# ファイアウォールの設定を確認する(IPv6)
alias ty_show_firewall6='iptables6 -nv -L'
# ディスク使用量の確認
alias ty_show_diskusage='df -h'
# 起動プログラムからパッケージ確認（引数:プログラムのパス）
alias ty_show_what_yum_package='yum whatprovides $1'