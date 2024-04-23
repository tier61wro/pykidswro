import os
from pathlib import Path

from dotenv import load_dotenv

# Загружаем переменные окружения
dotenv_path = Path(__file__).resolve().parent.parent / '.env'
load_dotenv(dotenv_path=dotenv_path)

# Получаем переменную окружения для определения среды запуска
deploy_env = os.getenv('DEPLOY_ENVIRONMENT', 'local')

# Импортируем BASE_DIR из настроек Django
from config.settings import BASE_DIR

# Инициализируем пустой словарь DATABASES
DATABASES = {}

# Задаем конфигурацию базы данных в зависимости от среды запуска
if deploy_env == 'docker':
    # Конфигурация для Docker
    DATABASES['default'] = {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': os.getenv('DB_NAME'),
        'USER': os.getenv('DB_USER'),
        'PASSWORD': os.getenv('DB_PASSWORD'),
        'HOST': 'pykids_db',  # Имя сервиса Postgres в вашем docker-compose.yml
        'PORT': os.getenv('DB_PORT', 5432),
        'OPTIONS': {
            'options': '-c search_path=public,content'
        }
    }
else:
    # Локальная конфигурация для SQLite или Postgres
    if os.getenv('USE_SQLITE', 'True') == 'True':
        DATABASES['default'] = {
            'ENGINE': 'django.db.backends.sqlite3',
            'NAME': str(BASE_DIR / "db.sqlite3"),
        }
    else:
        DATABASES['default'] = {
            'ENGINE': 'django.db.backends.postgresql',
            'NAME': os.getenv('DB_NAME'),
            'USER': os.getenv('DB_USER'),
            'PASSWORD': os.getenv('DB_PASSWORD'),
            'HOST': os.getenv('DB_HOST', '127.0.0.1'),  # localhost или другой хост
            'PORT': os.getenv('DB_PORT', 5432),
            'OPTIONS': {
                'options': '-c search_path=public,content'
            }
        }
