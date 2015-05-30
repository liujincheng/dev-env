#/bin/sh

mkdir -p ~/.vim
#cp .vimrc ~/.vimrc

#gitv
git clone https://github.com/gregsexton/gitv.git
cp -rf gitv/* ~/.vim

#DirDiff
git clone https://github.com/vim-scripts/DirDiff.vim.git
cp -rf DirDiff.vim/* ~/.vim

#genutils
git clone https://github.com/vim-scripts/genutils.git
cp -rf genutils/* ~/.vim

#grep
git clone https://github.com/vim-scripts/grep.vim.git
cp -rf grep.vim/* ~/.vim

#lookupfile
git clone https://github.com/vim-scripts/lookupfile.git
cp -rf lookupfile/* ~/.vim

#minibufexpl
git clone https://github.com/fholgado/minibufexpl.vim.git
cp -rf minibufexpl.vim/* ~/.vim

#vim-fugitive,  a Git wrapper
git clone https://github.com/nevans/vim-fugitive.git
cp -rf vim-fugitive/* ~/.vim

#taglist
git clone https://github.com/vim-scripts/taglist.vim.git
cp -rf taglist.vim/* ~/.vim

#winmanager
git clone https://github.com/vim-scripts/winmanager.git
cp -rf winmanager/* ~/.vim

#netrw
git clone https://github.com/vim-scripts/netrw.vim.git
cp -rf netrw.vim/* ~/.vim

#supertab
git clone git@github.com:ervandew/supertab.git
cp -rf supertab/* ~/.vim
