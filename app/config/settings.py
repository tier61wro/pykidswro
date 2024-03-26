"""
Django settings for project.
"""
import logging
import os
from pathlib import Path

from dotenv import load_dotenv
from split_settings.tools import include

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
DEBUG = False


# allowed_hosts = os.getenv('ALLOWED_HOSTS')
# if allowed_hosts is not None:
#     ALLOWED_HOSTS = allowed_hosts.split(',')
# else:
#     ALLOWED_HOSTS = []
# allowed_hosts = ['127.0.0.1', '172.23.0.4']
# ALLOWED_HOSTS = allowed_hosts.split(',')
# ALLOWED_HOSTS = ['127.0.0.1', '172.23.0.4', '172.23.0.3', '31.187.64.163']
ALLOWED_HOSTS = ['pykids.pl', 'www.pykids.pl', '31.187.64.163', 'localhost', '127.0.0.1', '[::1]']


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
    'lessons.apps.LessonsConfig',
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

# LANGUAGE_CODE = 'ru-RU'
LANGUAGE_CODE = 'pl'


TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = False

DATE_FORMAT = 'd m Y'
DATE_INPUT_FORMATS = ['%d/%m/%Y']

USE_TZ = True


# Static files (CSS, JavaScript, Images)

# STATIC_ROOT = '/app/staticfiles/'

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

# LOCAL_RUNSERVER
# этот путь более подходит для локального развертывания Django
STATIC_ROOT = os.path.join(BASE_DIR, 'collected_static/')

# этот путь для отдачи статики через nginx
# STATIC_ROOT = '/app/staticfiles/'

logger.info(f"STATIC_ROOT is set to: {STATIC_ROOT}")

'''
Список дополнительных местоположений файловой системы, где Django будет искать статические файлы,
помимо стандартной папки static каждого приложения.
Это полезно для статических файлов, которые не относятся непосредственно к приложениям Django.
'''
# STATICFILES_DIRS = [os.path.join(BASE_DIR, "static")]

# LOCAL_RUNSERVER
STATICFILES_DIRS = [os.path.join(BASE_DIR, '..', 'static'), ]

logger.info(f"STATICFILES_DIRS is set to: {STATICFILES_DIRS}")


# Default primary key field type

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'


include(
    'components/database.py',
)


LOCALE_PATHS = ['movies/locale']
PORT = 8000

DJANGO_LOG_FILE = os.path.join(BASE_DIR, 'log', 'django.log')
logger.info(f"DJANGO_LOGS_PATH is set to: {DJANGO_LOG_FILE}")
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
        'file': {
            # 'level': 'DEBUG',
            'level': 'INFO',
            'class': 'logging.FileHandler',
            # 'filename': '/app/log/django.log',
            'filename': DJANGO_LOG_FILE,
            'formatter': 'default',
        },
    },
    'loggers': {
        'django.db.backends': {
            'level': 'DEBUG',
            'handlers': ['debug-console'],
            'propagate': False,
        },
        'django': {
            'handlers': ['file'],
            # 'level': 'DEBUG',
            'level': 'INFO',
            'propagate': True,
        },
    },
}

# INTERNAL_IPS = [
#     "127.0.0.1",
# ]

DEBUG = True
logger.info(f"DEBUG is set to: {DEBUG}")

if DEBUG:
    import socket  # only if you haven't already imported this
    hostname, _, ips = socket.gethostbyname_ex(socket.gethostname())
    INTERNAL_IPS = [ip[: ip.rfind(".")] + ".1" for ip in ips] + ["127.0.0.1", "10.0.2.2"]
