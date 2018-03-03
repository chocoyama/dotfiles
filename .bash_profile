alias ls='ls -G'
alias ll='ls -l'

cdll()
{
  \cd "$@" && ll
}
alias cd="cdll"

alias atom='open -a /Applications/Atom.app/'

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
