# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#---------------------------------------------------------------------------------------------------------------
# nvidia alias
alias prime='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only'

# just a better ls command  :-)
alias ls='exa --icons'

# python environment
alias mypy='source ~/pyENV/bin/activate && echo 🔥WELCOME TO PYTHON ENVIRONMENT🔥'

# bash interface 
PS1='[\u@\h \W]\$ '




#---------------------------------------------------------------------------------------------------------------
# for nvidia driver to work fine , IF you don't use nvidia graphic card , remove these two line
export __NV_PRIME_RENDER_OFFLOAD=1
export __GLX_VENDOR_LIBRARY_NAME=nvidia



# time stamp
export HISTTIMEFORMAT="%F %T "




#bash history
export HISTSIZE=
export HISTFILESIZE=



shopt -s histappend
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"


# run:
echo you are: $USER
free -h
echo ""
echo ""
echo ""
fortune
echo ""
