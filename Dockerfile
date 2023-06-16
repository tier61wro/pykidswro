FROM python:3.10.2-alpine

# Установка необходимых пакетов с заголовочными файлами Linux
RUN apk add --no-cache build-base python3-dev linux-headers libpq-dev

WORKDIR /app

COPY app/requirements.txt .

RUN pip install --upgrade pip \
    && pip install -r requirements.txt \
    && pip install psycopg2

COPY app .

RUN python manage.py collectstatic --noinput

COPY bootstrap-5.3.0-dist /app/staticfiles/bootstrap


#CMD ["gunicorn", "config.wsgi:application", "--bind", "0.0.0.0:8000"]
CMD ["gunicorn", "config.wsgi:application", "--bind", "0.0.0.0:8000", "--reload", "--access-logfile", "-", "--error-logfile", "-", "--capture-output", "--log-level", "debug"]