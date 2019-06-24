function fishfunc
    if count $argv > /dev/null
        vim ~/.config/fish/functions/$argv[1].fish
    else
        ls ~/.config/fish/functions
    end
end
