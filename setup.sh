DOTFILES='config'
REMOTE='https://github.com/lulzhipsters/config.git'

git clone --bare $REMOTE $HOME/$DOTFILES
# avoid using .gitignore so that child directories containing git repositories aren't interfered with
echo '*' >> $HOME/$DOTFILES/info/exclude

alias config='/usr/bin/git --git-dir=$HOME/$DOTFILES/ --work-tree=$HOME'
config checkout
