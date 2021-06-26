#!/bin/bash

BROWSER_PATH="/Applications/Safari.app"
if [ $# -eq 0 ];then
	echo "[++++++++++++ You are opening Safari... goodbye! ++++++++++++]"
	open -a "$BROWSER_PATH"
else
	URL_attribute="--url"
	if [ $# -eq 2 ] && [ $1 == $URL_attribute ];then 
		URL=$(echo $2|sed 's/http:\/\///g; s/https:\/\///g')
		echo "[++++++++++++ You are opening Safari with a personalized URL... goodbye! ++++++++++++]"
		open -a "$BROWSER_PATH" "https://$URL"
	else
		complete_query_string="https://www.google.com/search?q=" #format: https://www.google.com/search?q=something+to+search+on+Google
		partial_query_string=""
		for i in $@; do
			partial_query_string=$partial_query_string+$i
		done
		partial_query_string=${partial_query_string:1} #useful for delete the first "+" 
		complete_query_string=$complete_query_string$partial_query_string
		echo "[++++++++++++ You are opening Safari with a personalized query... goodbye! ++++++++++++]"
		open -a "$BROWSER_PATH" "$complete_query_string"
	fi
fi
