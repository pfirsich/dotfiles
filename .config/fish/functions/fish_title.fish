function settitle
    set TERM_TITLE $argv
end

function fish_title
    if set -q TERM_TITLE
        echo $TERM_TITLE
    else
        echo (status current-command) ' '
        pwd
    end
end
