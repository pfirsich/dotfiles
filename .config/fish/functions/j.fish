function j --description "j for jump"
    while read -la line
        set -l name (string match -r "^[^=]+" "$line")
        set -l dir (string match -r "[^=]+\$" "$line")
        if [ $name = $argv ]
            cd "$dir"
            break
        end
    end < ~/.jpaths
end
