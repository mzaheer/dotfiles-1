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
