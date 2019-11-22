function cfz
    set path (fz)
    if [ $path ]
        cd "$path"
    else
        echo "No selection."
    end
end
