function ipinfo
    curl -s "http://ipinfo.io/$argv" | jq
end
