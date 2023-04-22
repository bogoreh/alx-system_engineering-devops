#!/usr/bin/env bash
# this script sets up the nginx web server

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
		sudo apt-get install -y "$1" -qq
		echo -e "\n"
	else
		echo -e "${yellow}${1} is already installed.${reset}\n"
	fi
}


install nginx
echo -e "${green}Finished installing ${yellow}$1${reset}\n"

# sudo mkdir -p /data/web_static/{shared,releases/test}/
# sudo chmod -R 755 /data/web_static/{shared,releases/test}
sudo mkdir -p -m=755 /data/web_static/{releases/test,shared}

INDEX=\
"<html>
  <head>
  </head>
  <body>
    Holberton School for the win!
  </body>
</html>"
bash -c "echo -e '$INDEX' | sudo tee '/data/web_static/releases/test/index.html' > /dev/null"

sudo ln -sf /data/web_static/releases/test/ /data/web_static/current
sudo chown -hR ubuntu:ubuntu /data/

SERVER_CONFIG=\
"# Custom server configuration
server {
        listen 80 default_server;
        listen [::]:80 default_server;
        add_header X-Served-By $HOSTNAME;
        root /var/www/html;
        index index.html index.htm;

        server_name alphaziro.tech www.alphaziro.tech;

        location /hbnb_static/ {
                alias /data/web_static/current/;
        }
        error_page 404 /404.html;
        location /404 {
                root /etc/nginx/html;
                internal;
        }
}"

sudo mkdir -p -m=755 /etc/nginx/sites-enabled && sudo touch /etc/nginx/sites-enabled/alphaziro.tech
bash -c "echo -e '$SERVER_CONFIG' | sudo tee '/etc/nginx/sites-enabled/alphaziro.tech' > /dev/null"

# SETTING UP SSL
echo -e "${blue}Setting up SSL...${reset}\n"
install certbot
install python3-certbot-nginx

echo -e "${blue}Updating firewall...${reset}\n"
sudo ufw allow 'Nginx Full'
sudo ufw delete allow 'Nginx HTTP'
sudo ufw reload
echo -e "${green}Finished updating firewall${reset}\n"

sudo certbot --nginx -d alphaziro.tech -d www.alphaziro.tech

# test the renewal process
sudo certbot renew --dry-run

echo -e "${green}Finished setting up SSL${reset}\n"

sudo ufw status

exit 0
