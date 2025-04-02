# Commit Details

## Summary
- Updated `Dockerfile` to add a non-root user, set permissions for static files, and switch to the non-root user.
- Modified `settings.py` to configure `STATICFILES_DIRS`, `STATIC_URL`, and `STATIC_ROOT` for static file handling.
- Added a new `styles.css` file under `static/css/` for styling.
- Updated `compose.yaml` to include `nginx` service and profiles for production and development.
- Added a new `nginx.conf` file for configuring the Nginx server.
- Removed the unused `style.css` file from `HelloWeb/static/css/`.

## Learned
1. How to configure a Dockerfile to use a non-root user for better security.
2. The importance of setting up `STATICFILES_DIRS`, `STATIC_URL`, and `STATIC_ROOT` in Django for serving static files.
3. How to configure `docker-compose` profiles for different environments (production and development).
4. How to set up Nginx as a reverse proxy for a Django application.
5. To find the name of a running container: docker ps
6. To collect static files is the directory is mounted `docker exec -it hellowebproject-web-1 sh -c "python manage.py collectstatic --noinput"`

