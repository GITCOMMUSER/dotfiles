#   __            __ 
#  / /  ___ ____ / / 
# / _ \/ _ `(_-</ _ \
#/_.__/\_,_/___/_//_/
# bash configuration 



# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
alias pyenv='source ~/pyENV/bin/activate' #alias for activating pythone environment


git_branch() {
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$branch" ]; then
    echo " (\e[1;33m$branch\e[0m)"
  fi
}

PS1='\[\e[5;36m\]\u@\h \[\e[1;34m\]\w\[\e[0m\]$(git_branch)$ '



HISTTIMEFORMAT="%F %T "
HISTCONTROL=ignoredups



#bash /home/dataman/Space/Core/configChoose.sh
