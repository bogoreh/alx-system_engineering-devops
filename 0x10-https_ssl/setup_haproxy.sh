#!/usr/bin/env bash
# install load balancer

# colors
green='\e[1;32m'
blue='\e[1;34m'
yellow='\e[1;33;1;40m'
reset='\033[0m'

echo -e "${blue}Running updates and checks...${reset}\n"

function install() {
	command -v "$1" &> /dev/null

	#shellcheck disable=SC2181
	if [ $? -ne 0 ]; then
		echo -e "Installing: ${yellow}$1${reset}\n"
		sudo apt-get update -y -qq && \
			sudo apt-get install -y "$1" -qq
		echo -e "\n"
	else
		echo -e "${yellow}${1} is already installed.${reset}\n"
	fi
}

install haproxy #install haproxy

echo -e "${green}Finished installing ${yellow}$1${reset}\n"

sudo cp /etc/haproxy/haproxy.cfg haproxy_cfg.backup

server_config=\
"
global
    log     /dev/log local0
    maxconn 1000
    user    haproxy
    group   haproxy
    tune.ssl.default-dh-param 2048

defaults
    log     global
    mode    http
    option  forwardfor
    option  httplog
    option  dontlognull
    timeout connect  5000
    timeout client  50000
    timeout server  50000
    retries 3
    option  redispatch

frontend www-http
   bind   *:80
   reqadd X-Forwarded-Proto:\ http
   default_backend www-backend

frontend www-https
   bind   0.0.0.0:443 ssl crt /etc/letsencrypt/live/alphaziro.tech/fullchain.pem
   reqadd X-Forwarded-Proto:\ https
   acl    letsencrypt-acl path_beg /.well-known/acme-challenge/
   use_backend letsencrypt-backend if letsencrypt-acl
   default_backend www-backend

backend www-backend
   balance  roundrobin
   redirect scheme https if !{ ssl_fc }
   server 100910-web-01 100.24.74.255:80 check
   server 100910-web-02 52.86.146.141:80 check

backend letsencrypt-backend
   server letsencrypt 127.0.0.1:71417
"

# shellcheck disable=SC2154
echo "$server_config" | sudo tee '/etc/haproxy/haproxy.cfg' > /dev/null

# enable haproxy to be started by init script
#echo "ENABLED=1" | sudo dd status=none of=/etc/default/haproxy
echo "ENABLED=1" | sudo tee '/etc/default/haproxy' > /dev/null

#sudo service haproxy restart
