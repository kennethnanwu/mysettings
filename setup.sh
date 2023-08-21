VUNDLE=${HOME}/.vim/bundle/Vundle.vim


# Clone or update Vundle.
if [[ ! -d "${VUNDLE}" ]]; then
  git clone --quiet https://github.com/VundleVim/Vundle.vim.git "${VUNDLE}"
else
  git -C "${VUNDLE}" pull --quiet
fi
