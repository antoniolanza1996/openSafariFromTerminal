#!/bin/bash
#Useful script to open and interact with Safari from terminal on MacOS 

#3 types of usage: 
# 1. safari.sh <without parameters> ----> simply open Safari 
# 2. safari.sh --url URL_PARAM ----> open a tab in Safari with the site specified in URL_PARAM (NOTE: You should write your URL without specifing the protocol)
# 3. safari.sh YOUR_QUERY_SEPARATED_BY_SPACE  ----> open Safari and search "YOUR_QUERY_SEPARATED_BY_SPACE" on Google

#Examples of usage: 
# safari.sh --url www.github.com  ----> open https://www.github.com on Safari
# safari.sh something to search on Google ----> find "something to search on Google" on Google 

if [ $# -eq 0 ];then
	echo "[++++++++++++ You are opening Safari... goodbye! ++++++++++++]"
	open -a Safari
else
	URL_attribute="--url"
	if [ $# -eq 2 ] && [ $1 == $URL_attribute ];then 
		URL=$(echo $2|sed 's/http:\/\///g; s/https:\/\///g')
		echo "[++++++++++++ You are opening Safari with a personalized URL... goodbye! ++++++++++++]"
		open -a Safari https://$URL
	else
		complete_query_string="https://www.google.com/search?q=" #format: https://www.google.com/search?q=something+to+search+on+Google
		partial_query_string=""
		for i in $@; do
			partial_query_string=$partial_query_string+$i
		done
		partial_query_string=${partial_query_string:1} #useful for delete the first "+" 
		complete_query_string=$complete_query_string$partial_query_string
		echo "[++++++++++++ You are opening Safari with a personalized query... goodbye! ++++++++++++]"
		open -a Safari $complete_query_string
	fi
fi
