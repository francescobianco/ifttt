#!/usr/bin/env bash

url="https://github.com/trending"
regex='alt="@[[:alnum:]]*'
daily="$(curl -s ${url}/developers/shell?since=daily | grep -o "${regex}" | cut -c 7-)"
weekly="$(curl -s ${url}/developers/shell?since=weekly | grep -o 'alt="@[[:alnum:]]*' | cut -c 7-)"
monthly="$(curl -s ${url}/developers/shell?since=monthly | grep -o 'alt="@[[:alnum:]]*' | cut -c 7-)"

echo -e "${daily}\n${weekly}\n${monthly}" | sort | uniq -u

