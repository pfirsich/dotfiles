function cfz
    set path (fd -td $argv | fzy)
    if [ $path ]
        cd "$path"
    else
        echo "No selection."
    end
end
