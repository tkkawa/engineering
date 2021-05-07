export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad


alias g="git"
alias gi="git init"
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gch="git checkout"
alias gcl="git clone"
alias gf="git fetch --all"
alias gl="git log --oneline --name-only"
alias gp="git push"
alias gpr="git pull --rebase"
alias gr="git reset"
alias grao="git remote add origin"
alias gri="git rebase -i"
alias gs="git status"
alias gt="git tree"
alias ls="ls --color=auto"
alias p="python"
alias v="vim"
alias print_modified_filenames="bash modify_handler.sh"

if [ "$(uname)" == "Darwin" ]; then
  OS="Mac"
  unalias ls
elif [ "$(uname)" == "Linux" ]; then
  OS="Linux"
  unset CLICOLOR
  unset LSCOLORS
fi

echo $OS
