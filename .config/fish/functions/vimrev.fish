function vimrev
    git show $argv | view -c "set syntax="(splitext $argv) -
end
