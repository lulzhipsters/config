REMOTE='https://github.com/lulzhipsters/config.git'

git init $HOME
echo '*' >> $HOME/.git/info/exclude

alias config='/usr/bin/git --git-dir=$HOME/.git --work-tree=$HOME'

git -C $HOME remote add "origin" $REMOTE
git -C $HOME checkout main
