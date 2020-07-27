if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

case "$OSTYPE" in
  darwin*)
    #
  ;;
  linux*)
    # export PATH="$HOME/.parts/autoparts/bin:$PATH"
    # eval "$(parts init -)"
  ;;
esac

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
export PATH=/Users/salrea/Library/Python/3.6/bin:$PATH
export PATH=$HOME/bin:$PATH

#OktaAWSCLI
if [ -f "/Users/salrea/.okta/bash_functions" ]; then
    . "/Users/salrea/.okta/bash_functions"
fi

