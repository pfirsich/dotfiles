function vfz
    set path (fz)
    if [ $path ]
        vim "$path"
    else
        echo "No selection."
    end
end
