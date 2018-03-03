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