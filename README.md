## Docker Compose configuration for Django development (and production) with Nginx, Celery, Redis and PostgreSQL
A boilerplate to deploy Django with cool stuff. Also serves as an example project from these tutorial:
1. <a href="https://ruddra.com/2016/08/14/docker-django-nginx-postgres/">Deploy Django, Gunicorn, NGINX, Postgresql using Docker</a>
2. <a href="https://ruddra.com/2016/11/02/serve-static-files-by-nginx-from-django-using-docker/">Serve Static Files by Nginx from Django using Docker</a>
3. <a href="https://ruddra.com/2016/11/14/docker-do-stuff-using-celery-using-redis-as-broker/">Docker: Use Celery in Django (Redis as Broker)</a>

The above tutorials describe how this boilerplate was created from scratch so that you can build your own.

### Basic Usage
1. Fork the repo to your Github account.
2. `git clone` the repo to your local computer.
3. Run `make build` inside the root directory to build/rebuild (if necessary) all the containers in the project.
4. Then run `make up` to start the containers and have them run as a daemon process (i.e., in the background).
5. Visit `http://localhost:8000/` to see the project.
6. Visit `http://localhost:8000/admin` to view the admin login screen. No users have been setup, so you won't be able to login until after you have done that.

Checkout the [commands](#commands) section below for more usage.

### Preview
A default Django project resides in `src` directory. When you start the project, you will see the following screen at `http://localhost:8000/`:

![Demo One](https://github.com/ruddra/blog-images/raw/master/Demo%201.png)

Also when you access the django container log via `make log-web`, you will see the following:

![Demo Two](https://github.com/ruddra/blog-images/raw/master/Demo%202.png)

### Commands
The following commands can be run inside the project root directory (see the Makefile in this project for more details):

1. `make build` to build/rebuild (if necessary) all the containers in the project.
2. `make up` to start the containers and have them run as a daemon process (i.e., in the background).
3. `make up-non-daemon` to start containers and have them run as a non-daemon process.
4. `make start` to start containers, if the project has already been built.
5. `make stop` to stop containers.
6. `make restart` to restart containers.
7. `make shell-web` to gain shell access into the web container.
8. `make shell-db` to gain shell access into the db container.
9. `make shell-nginx` to gain shell access into the nginx container.
10. `make log-web` to view the logs in the web container.
11. `make log-db` to view the logs in the db container.
12. `make log-nginx` to view the logs in the nginx container.
13. `make collectstatic` to put static files in the static directory.
