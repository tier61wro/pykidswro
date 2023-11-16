"""
Django settings for project.
"""
import os
from pathlib import Path

from dotenv import load_dotenv
from split_settings.tools import include

import logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)


load_dotenv()

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent
logger.info(f"BASE_DIR is set to: {BASE_DIR}")
logger.info(f"BASE_DIR file: {Path(__file__)}")


# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = os.environ.get('SECRET_KEY'),

# SECURITY WARNING: don't run with debug turned on in production!
# DEBUG = os.environ.get('DEBUG', False) == 'True'
DEBUG = True


# allowed_hosts = os.getenv('ALLOWED_HOSTS')
# if allowed_hosts is not None:
#     ALLOWED_HOSTS = allowed_hosts.split(',')
# else:
#     ALLOWED_HOSTS = []
# allowed_hosts = ['127.0.0.1', '172.23.0.4']
# ALLOWED_HOSTS = allowed_hosts.split(',')
ALLOWED_HOSTS = ['127.0.0.1', '172.23.0.4', '172.23.0.3']

# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'bootstrap4',
    'debug_toolbar',
    'main.apps.MainConfig',
    'diary.apps.DiaryConfig',
    'django_extensions',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'debug_toolbar.middleware.DebugToolbarMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'config.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

logger.info(f"BASE_DIR is set to: {BASE_DIR}")
logger.info(f"TEMPLATES is set to: {TEMPLATES}")
WSGI_APPLICATION = 'config.wsgi.application'

# Password validation

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization

LANGUAGE_CODE = 'ru-RU'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = False

DATE_FORMAT = 'd m Y'
DATE_INPUT_FORMATS = ['%d/%m/%Y']

USE_TZ = True


# Static files (CSS, JavaScript, Images)

# STATIC_ROOT = '/app/staticfiles/'
# STATICFILES_DIRS = [os.path.join(BASE_DIR, "../static")]

'''
URL, по которому будут доступны статические файлы (например, CSS, JavaScript, изображения)
если картинка лежит тут /app/collected_static/images/myimage.jpg
Если STATIC_URL установлен в /static/, то картинка тут URL http://<ваш домен>/static/images/myimage.jpg
'''
STATIC_URL = '/static/'

'''
Абсолютный путь к директории, куда будут собираться все статические файлы
из всех приложений при выполнении команды `collectstatic`.
Настройте ваш веб-сервер (например, Nginx) на обслуживание файлов из этой папки.
'''
STATIC_ROOT = os.path.join(BASE_DIR, 'collected_static/')
logger.info(f"STATICROOT is set to: {STATIC_ROOT}")

'''
Список дополнительных местоположений файловой системы, где Django будет искать статические файлы,
помимо стандартной папки static каждого приложения.
Это полезно для статических файлов, которые не относятся непосредственно к приложениям Django.
'''
STATICFILES_DIRS = [os.path.join(BASE_DIR, "static")]

# STATICFILES_DIRS = ["static"]

logger.info(f"STATICFILES is set to: {STATICFILES_DIRS}")
# INFO:config.settings:STATICFILES is set to: ['/app/static']

# Default primary key field type

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'


include(
    'components/database.py',
)


LOCALE_PATHS = ['movies/locale']
PORT = 8000


LOGGING = {
    'version': 1,
    'disable_existing_loggers': True,
    'filters': {
        'require_debug_true': {
            '()': 'django.utils.log.RequireDebugTrue',
        }
    },
    'formatters': {
        'default': {
            'format': '%(asctime)s %(levelname)s: %(message)s [in %(pathname)s:%(lineno)d]',
        },
    },
    'handlers': {
        'debug-console': {
            'class': 'logging.StreamHandler',
            'formatter': 'default',
            'filters': ['require_debug_true'],
        },
    },
    'loggers': {
        'django.db.backends': {
            'level': 'DEBUG',
            'handlers': ['debug-console'],
            'propagate': False,
        }
    },
}

# INTERNAL_IPS = [
#     "127.0.0.1",
# ]



if DEBUG:
    import socket  # only if you haven't already imported this
    hostname, _, ips = socket.gethostbyname_ex(socket.gethostname())
    INTERNAL_IPS = [ip[: ip.rfind(".")] + ".1" for ip in ips] + ["127.0.0.1", "10.0.2.2"]