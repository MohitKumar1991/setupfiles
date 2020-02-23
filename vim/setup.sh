#! /bin/bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
brew install python3
export CPATH=`xcrun --show-sdk-path`/usr/include


# ycm installation
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
/usr/local/Cellar/python/3.7.6_1/bin/python3 install.py --clang-completer
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core --config Release
