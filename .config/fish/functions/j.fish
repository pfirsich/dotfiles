function j --description "j for jump"
    switch "$argv"
        case 'dev'
            cd ~/dev
        case 'ff'
            cd ~/.config/fish/functions
        case 'dot'
            cd ~/repos/dotfiles
        case 'dl'
            cd ~/Downloads
        case '*'
            while read -la line
                set -l name (string match -r "^[^=]+" $line)
                set -l dir (string match -r "[^=]+\$" $line)
                if [ $name = $argv ]
                    cd $dir
                    break
                end
            end < ~/.jpaths
    end
end
