import os





# LOCAL_RUNSERVER
from config.settings import BASE_DIR
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / "db.sqlite3",
    }
}

# postgres docker or local
# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.postgresql',
#         'NAME': os.environ.get('DB_NAME'),
#         'USER': os.environ.get('DB_USER'),
#         'PASSWORD': os.environ.get('DB_PASSWORD'),
#         'HOST': 'pykids_db',
#         'PORT': os.environ.get('DB_PORT', 5432),
#         'OPTIONS': {
#             'options': '-c search_path=public,content'
#         }
#         # if we want to use a local version of postgres, not docker
#         # 'HOST': os.environ.get('DB_HOST', '127.0.0.1'),
#         # 'HOST': 'db',
#         # 'HOST': 'localhost',
#     }
# }
