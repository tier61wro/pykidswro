FROM python:3.10.2-alpine

# Установка необходимых пакетов с заголовочными файлами Linux
RUN apk add --no-cache build-base python3-dev linux-headers libpq-dev

WORKDIR /app

COPY app/requirements.txt .
COPY gunicorn.conf.py /app/gunicorn.conf.py


RUN pip install --upgrade pip \
    && pip install -r requirements.txt \
    && pip install psycopg2

# Создаем директорию для логов
RUN mkdir /app/log

# Копируем статические файлы перед запуском collectstatic
COPY static /app/static

COPY app .

RUN python manage.py collectstatic --noinput

CMD ["gunicorn", "config.wsgi:application", "--bind", "0.0.0.0:8000", "--config", "/app/gunicorn.conf.py"]

