function sesh
    set path (cat ~/txt/session.txt | fzy -l 30 | string trim)
    if [ $path ]
        vim "$path"
    else
        echo "No selection."
    end
end
