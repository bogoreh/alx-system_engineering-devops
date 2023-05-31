# Application server
## Resources
* [Application server vs web server](https://www.nginx.com/resources/glossary/application-server-vs-web-server/)
* [How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-gunicorn-and-nginx-on-ubuntu-16-04) (As mentioned in the video, do not install Gunicorn using virtualenv, just install everything globally)
* [Running Gunicorn](https://docs.gunicorn.org/en/latest/run.html)
* [Be careful with the way Flask manages slash in route](https://werkzeug.palletsprojects.com/en/0.14.x/routing/) - strict_slashes
* [Upstart documentation](https://doc.ubuntu-fr.org/upstart)

## Tasks
### 0. Set up development with Python
Let’s serve what you built for [AirBnB clone v2 - Web framework](https://github.com/leroysb/AirBnB_clone_v2) on `web-01`. This task is an exercise in setting up your development environment, which is used for testing and debugging your code before deploying it to production. Git clone your `AirBnB_clone_v2` on your `web-01` server. Configure the file `web_flask/0-hello_route.py` to serve its content from the route `/airbnb-onepage/` on port `5000`. Your Flask application object must be named `app`.

### 1. Set up production with Gunicorn
Now that you have your development environment set up, let’s get your production application server set up with `Gunicorn` on `web-01`, port `5000`. You’ll need to install `Gunicorn` and any libraries required by your application. Your `Flask` application object will serve as a [WSGI](https://www.fullstackpython.com/wsgi-servers.html) entry point into your application. This will be your production environment. As you can see we want the production and development of your application to use the same port, so the conditions for serving your dynamic content are the same in both environments.

### 2. Serve a page with Nginx
[2-app_server-nginx_config](./2-app_server-nginx_config) -> Nginx config file that serves a page both locally and on its public IP on port `80` and proxies requests to the process listening on port `5000`.

### 3. Add a route with query parameters
[3-app_server-nginx_config](./3-app_server-nginx_config) -> 

