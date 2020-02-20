function splitext
    echo $argv | awk -F. '{print $NF}'
end
