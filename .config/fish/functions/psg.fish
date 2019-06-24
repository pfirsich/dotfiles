function psg --description 'ps aux | grep'
    ps aux | begin
        read first
        echo $first
        grep $argv
    end
end
