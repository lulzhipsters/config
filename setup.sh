REMOTE='https://github.com/lulzhipsters/config.git'

alias config='/usr/bin/git --git-dir=$HOME/.git --work-tree=$HOME'

config init
echo '*' >> $HOME/.git/info/exclude
config remote add "origin" $REMOTE
config checkout main
