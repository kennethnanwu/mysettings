VUNDLE=${HOME}/.vim/bundle/Vundle.vim
# Clone or update Vundle.
if [[ ! -d "${VUNDLE}" ]]; then
  git clone --quiet https://github.com/VundleVim/Vundle.vim.git "${VUNDLE}"
else
  git -C "${VUNDLE}" pull --quiet
fi

FZF=${HOME}/.fzf
if [[ ! -d "${FZF}" ]]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git "${FZF}"
else
  git -C "${VUNDLE}" pull --quiet
fi
~/.fzf/install
