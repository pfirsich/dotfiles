function vimtxt
    vim (fd . '/home/joel/txt' | fzy -q $argv);
end
