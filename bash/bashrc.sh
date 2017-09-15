## Author -- Brandon Merritt
## Proxy script -- Mark Connolly

# this function detects the need for setting proxy
function proxy(){
    local proxy=some.proxy # add proxy here
    local port=8000 # add correct port
    if [[ $1 && $1 = "auto" ]]; then
        local resp=$(ping -c 1 -i 1 $proxy | grep 'received' | awk -F',' '{ print $2 }' | awk '{ print $1 }')
        if [ $resp == 1 ]; then
            echo "proxy detected"
        else
            echo "proxy not detected"
            local proxy=
        fi
    elif [[ $1 && $1 = "off" ]]; then
        local proxy=
    fi
    if [[ $1 && $1 = "on" || $resp && $resp == 1 ]]; then
        local proxy=http://$proxy:$port
    fi
    if [ $1 ]; then
        export HTTP_PROXY=$proxy
        export HTTPS_PROXY=$proxy
        export http_proxy=$proxy
        export https_proxy=$proxy
        export RSYNC_PROXY=$proxy
    fi
    echo "proxy is set to '$HTTP_PROXY'"
}
proxy auto


# functions for Ember VS Angular. You need to make sure the Angular project name is the same as your Project Location (app110735...vs angular-app)
function serve(){
  if [ ${PWD##*/} = "angularApp" ]; then #angular app replaces location
    ng serve
  elif [ ${PWD##*/} = "emberApp" ]; then #ember app replaces location
    ember serve
  else
    echo "Does this look like a drive-thru?"
  fi
}

function merge(){
  if [ ${PWD##*/} = "angularApp" ]; then #angular clean up
    npm cache clean && rm -rf node_modules && npm install #can define problem node modules if necessary
  elif [ ${PWD##*/} = "emberApp" ]; then
    bower cache clean && npm cache clean && rm -rf bower_components && rm -rf node_modules && npm install && bower install #can define problem node and bower modules if necessary
  else
    echo "Get thee to an Angular/Ember project neophyte!"
  fi
}

# Global NPM
export NODE_PATH=/usr/local/lib/node_modules
export PATH=/usr/local/bin:$PATH

# Command Prompt (super simple with no added details)
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
