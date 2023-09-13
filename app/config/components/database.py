import os

from config.settings import BASE_DIR

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / "db.sqlite3",
    }
}

# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.postgresql',
#         'NAME': os.environ.get('DB_NAME'),
#         'USER': os.environ.get('DB_USER'),
#         'PASSWORD': os.environ.get('DB_PASSWORD'),
#         # 'HOST': os.environ.get('DB_HOST', '127.0.0.1'),
#         # 'HOST': 'db',
#         # 'HOST': 'localhost',
#         'HOST': 'pykids_db',
#         'PORT': os.environ.get('DB_PORT', 5432),
#         'OPTIONS': {
#             'options': '-c search_path=public,content'
#         }
#     }
# }
