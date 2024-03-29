# Installs and configures nginx

exec {'install':
  provider => shell,
  command  => 'sudo apt -y update ; sudo apt -y install nginx ; echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html ; sudo sed -i "s/server_name _;/server_name _;\n\trewrite ^\/redirect_me https:\/\/www.buliro.net permanent;/" /etc/nginx/sites-available/default ; sudo service nginx start',
}