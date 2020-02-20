function fcd
    set path (fd -t d --max-buffer-time 0 | grep "$argv" | head -n 1)
    if [ $path ]
        cd "$path"
    else
        echo "No result."   
    end
end
