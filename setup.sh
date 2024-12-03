REMOTE='https://github.com/lulzhipsters/config.git'
BRANCH='main'

# TODO: backup anything?

git init $HOME --initial-branch $BRANCH
echo '*' >> $HOME/.git/info/exclude

alias config='/usr/bin/git --git-dir=$HOME/.git --work-tree=$HOME'

git -C $HOME remote add origin $REMOTE
git -C $HOME fetch origin
git -C $HOME checkout main
