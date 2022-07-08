#!/bin/sh
set -e

current_ip="$(curl --silent --show-error --fail ipecho.net/plain)"
echo "IP: $current_ip"

myVar=`echo $1 | sed 's/ *$//g'`

# Update A record
curl -X POST "https://dash.readme.com/api/v1/docs" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Basic cmRtZV94bjhzOWgwYWY3YTIwMGU3ZWY3YWIxZGJjMjBmYTkyMmI5ZDBmZGQ1NDAyMGEyYWE3OTQ3NGQ3MTk2ODliOGYyYmY4NjgwOg==" \
    -H "Accept: application/json" \
    --data-binary @- <<END;
{ 
    "hidden": false, 
    "order": 999, 
    "title": "Shell Script", 
    "type": "basic", 
    "body": "$myVar", 
    "category": "62c5c1dd961ffc001afae149" 
}
END