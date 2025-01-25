Created django project with: django-admin startproject HelloWeb .

Django "settings.py" updated:

    SECRET_KEY = os.environ.get("DJANGO_SECRET_KEY")

    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.postgresql',
            'NAME': os.environ.get('POSTGRES_NAME'),
            'USER': os.environ.get('POSTGRES_USER'),
            'PASSWORD': os.environ.get('POSTGRES_PASSWORD'),
            'HOST': 'db',
            'PORT': 5432,
        }
    }

Added .env path information inside the "compose.yaml"


When you run command: docker compose up, it is throwing an error.
The reason is it is trying to run the web service before db initialising finishes.
Temporary solution is restarting the web service manually from the Docker application. 