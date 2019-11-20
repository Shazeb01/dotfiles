#export PROMPT="%n@%m:%F{30}%~%f$ "
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
export EDITOR='vim' 
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

speedtest(){
 
 curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -
 
 }
 
 certspotter(){
 curl -s https://certspotter.com/api/v0/certs\?domain\=$1 | jq '.[].dns_names[]' | sed 's/\"//g' | sed 's/\*\.//g' | sort -u | grep $1
 }
 
 crtsh(){
 curl -s https://crt.sh/?q=%.$1  | sed 's/<\/\?[^>]\+>//g' | grep $1 | sort -u
 }
 
 profile(){
 
 vim ~/.bash_profile
 
 }
 
 sprofile(){
 
 source ~/.bash_profile
 
 }
 
 httpserver(){
 python3 -m http.server 8000
 }
 
 hgrip(){
 history | grep $1
 }
