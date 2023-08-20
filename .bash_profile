## ~/.bash_profile
## Executed by the bash login shell.
## If this is run, then ~/.profile is not.

# .profile has my env vars and paths
if [ -f "$HOME/.profile" ]; then
  source "$HOME/.profile"
fi

# config bash
if [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
