function sfz
    set path (fz)
    if [ $path ]
        subl "$path"
    else
        echo "No selection."
    end
end
