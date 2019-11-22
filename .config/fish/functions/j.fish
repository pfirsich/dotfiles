function j --description "j for jump"
    switch "$argv"
        case 'dev'
            cd ~/dev
        case 'ff'
            cd ~/.config/fish/functions
        case 'dot'
            cd ~/repos/dotfiles
        case '*'
            cd
    end
end
