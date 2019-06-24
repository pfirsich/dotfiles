function psp --description 'ps aux | peco'
    ps aux | begin
        read first
        echo $first
        peco $argv
    end
end
