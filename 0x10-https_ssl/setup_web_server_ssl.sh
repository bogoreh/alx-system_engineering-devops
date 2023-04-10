#!/usr/bin/env bash
# sets up web servers
sudo apt update
sudo apt-get -y upgrade
sudo apt-get -y install nginx

sudo ufw allow 'Nginx HTTP'
sudo ufw enable

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

cp /etc/nginx/sites-available/default ./nginx_sites-available_default.backup

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
        location /redirect_me {
                return 301 https://leroy.buliro.net/;
        }
        error_page 404 /404.html;
        location /404 {
                root /etc/nginx/html;
                internal;
        }
}"

bash -c "echo -e '$SERVER_CONFIG' | sudo tee '/etc/nginx/sites-available/alphaziro.tech' > /dev/null"
#sudo service nginx restart

# sets up ssl
sudo apt update
sudo apt-get -y upgrade
sudo apt-get -y install certbot python3-certbot-nginx

sudo ufw allow 'Nginx Full'
sudo ufw delete allow 'Nginx HTTP'

sudo certbot --nginx -d alphaziro.tech -d www.alphaziro.tech

# test the renewal process
sudo certbot renew --dry-run

sudo ufw status

exit 0
