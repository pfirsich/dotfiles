set -gx GOPATH /home/joel/.go
set -gx PATH /sbin /usr/sbin /home/joel/bin $GOPATH/bin /home/joel/.local/bin /home/joel/.luarocks/bin $PATH
set -gx VISUAL vim
set -gx EDITOR vim
set -gx VCPKG_ROOT /home/joel/repos/vcpkg

abbr "-" "prevd"
abbr "+" "nextd"

abbr sohere "env LD_LIBRARY_PATH=.:\$LD_LIBRARY_PATH"
abbr langen "env LANG=en_EN.UTF-8"
