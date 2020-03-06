function myip6
    curl -s "https://api6.ipify.org?format=json" | jq -r ".ip"
end
