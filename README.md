Описание структуры и порядок выполнения проекта:


- Создаем образ и запускаем контейнеры: `docker-compose up -d --build`
- Собираем статические файлы: `docker-compose exec pykids_web python manage.py collectstatic --no-input --clear`
- Применяем миграции базы данных: `docker-compose exec pykids_web python manage.py migrate --noinput`
- Если ругается на таблицы `docker-compose exec pykids_web python manage.py migrate --fake movies`
- Создаем пользователя: `docker-compose exec pykids_web python manage.py createsuperuser`
- Открываем браузер [панель администратора] (http://127.0.0.1/admin/)

DEPLOY order:

