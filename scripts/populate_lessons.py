import os
import re
import sys

import django
import requests
from django.core.exceptions import ObjectDoesNotExist

# Добавляем в sys.PATH путь до каталога, где находится manage.py
# Предполагая, что скрипт запускается из каталога, который на один уровень выше, чем 'app'
sys.path.append(os.path.join(os.path.dirname(__file__), '../app'))

# Указываем путь к вашему файлу settings.py
os.environ['DJANGO_SETTINGS_MODULE'] = 'config.settings'

# Настраиваем Django
django.setup()

# Теперь можно импортировать и использовать модели
from lessons.models import Chapter, Lesson

# Устанавливаем базовый URL для API запроса
GITHUB_NAME = "tier61wro"
REPO_NAME = "pykids_theory"
BRANCH = "master"
LANG_PATH = "pl"  # Путь в репозитории


def replace_markdown_tags(text):
    REPLACEMENTS = {
        re.compile(r':warning:'): '⚠️',
        re.compile(r':question:'): '❓',
    }

    for regex, replacement in REPLACEMENTS.items():
        text = regex.sub(replacement, text)
    return text


def replace_image_path(text):
    # Шаблон поиска путей к картинкам
    pattern = 'images/'
    # Шаблон замены без лишних символов экранирования
    replacement = '/static/article_images/pl/'

    # Применяем замену в тексте
    text = re.sub(pattern, replacement, text)
    return text



def extract_number_from_filename(filename):
    # Используем регулярное выражение для поиска числа в начале имени файла
    match = re.search(r'^_?(\d+)_', filename)
    # Если найдено, преобразуем в целое число и возвращаем
    if match:
        return int(match.group(1))
    # Если число в имени файла отсутствует, возвращаем None
    return None


def get_file_content(filename):
    raw_url = f"https://raw.githubusercontent.com/{GITHUB_NAME}/{REPO_NAME}/{BRANCH}/{LANG_PATH}/"
    url = f"{raw_url}{filename}"

    response = requests.get(url)

    if response.status_code == 200:
        return response.text
    else:
        raise Exception(f"Ошибка при доступе к {url}: {response.status_code}")


def get_lesson_title(content):
    try:
        lines = content.split("\n")
        first_line = lines[0]
        if ":" in first_line:  # Проверяем, содержит ли первая строка двоеточие
            title = first_line.split(":", 1)[1].strip()
            lesson_content = "\n".join(lines[1:])
            return title, lesson_content
        else:
            raise ValueError("Title format not recognized")  # Явно выбрасываем исключение, если формат не соответствует
    except (IndexError, ValueError) as e:
        print(f"Error processing lesson content: {e}")  # Обрабатываем известные исключения
        return None, None


if __name__ == "__main__":
    api_url = f"https://api.github.com/repos/{GITHUB_NAME}/{REPO_NAME}/contents/{LANG_PATH}?ref={BRANCH}"
    # Делаем запрос к GitHub API
    response = requests.get(api_url)
    Lesson.objects.all().delete()

    # Проверяем статус ответа
    if response.status_code == 200:
        # Забираем данные о файлах
        files_data = response.json()

        # Печатаем имена файлов

        for file in files_data:
            if file['type'] == 'file' and file['name'].endswith('.md'):
                lesson_file_name = file['name']
                lesson_order = extract_number_from_filename(lesson_file_name)
                file_content = get_file_content(lesson_file_name)
                chapter = Chapter.objects.get(number=0)
                chapter_order = lesson_order
                lesson_title, lesson_content = get_lesson_title(file_content)
                lesson_content = replace_markdown_tags(lesson_content)
                lesson_content = replace_image_path(lesson_content)
                if not lesson_title:
                    print(f"ERROR: can't find title for lesson {lesson_file_name}, check content")

                lesson = Lesson.objects.create(
                    order=lesson_order,
                    chapter_order=chapter_order,
                    chapter=chapter,
                    title=lesson_title,
                    content=lesson_content
                )
                # break

    else:
        print("Не удалось получить данные от GitHub API")
