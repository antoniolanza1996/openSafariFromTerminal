# Useful script to open and interact with Safari from terminal on MacOS
## 3 types of usage: 
1. `safari.sh` ----> simply open Safari
2. `safari.sh --url URL_PARAM` ----> open a tab in Safari with the site specified in URL_PARAM
3. `safari.sh YOUR_QUERY_SEPARATED_BY_SPACE`  ----> open Safari and search "YOUR_QUERY_SEPARATED_BY_SPACE" on Google (*NOTE*: if your query contains symbols which are Shell operators (e.g. `(`, `)`, `&`, `'`, `>`), you should put it in quotes as you can see in example usage 3.ii)

## Examples of usage:
1. `safari.sh`  ----> open Safari
2. `safari.sh --url www.github.com`  ----> open https://www.github.com on Safari
3. 
    1. `safari.sh something to search on Google` ----> find "something to search on Google" on Google 
    2. `safari.sh "Where there's a will there's a way (proverb)"` ----> find "Where there's a will there's a way (proverb)" on Google 

# Support for other web browsers
If you usually use another web browser on your Mac, you can easily adapt my script by changing `BROWSER_PATH` variable with the correct web browser installation path. For example:

## Google Chrome
`BROWSER_PATH="/Applications/Google Chrome.app"`

## Mozilla Firefox
`BROWSER_PATH="/Applications/Firefox.app"`

## Opera
`BROWSER_PATH="/Applications/Opera.app"`

# Extra
See https://github.com/antoniolanza1996/scripts_and_dotfiles/tree/main/bash_scripts for other useful bash scripts for MacOS.
