function ipinfo
    curl http://ipinfo.io/ -s | jq
end
