import os

import requests

GITHUB_NAME = "tier61wro"
REPO_NAME = "pykids_theory"
BRANCH = "master"
LANG_PATH = "pl"  # Путь в репозитории

# Папка для сохранения изображений
IMAGES_DIR = f"/home/tier/github/pykidswro/static/article_images/{LANG_PATH}"


# Создание папки, если она не существует
if not os.path.exists(IMAGES_DIR):
    os.makedirs(IMAGES_DIR)


# Функция для скачивания изображений
def download_images():
    api_url = f"https://api.github.com/repos/{GITHUB_NAME}/{REPO_NAME}/contents/{LANG_PATH}/images?ref={BRANCH}"

    print(f"{api_url=}")
    response = requests.get(api_url)
    if response.status_code == 200:
        print(response.text)
        files_data = response.json()
        for file in files_data:
            # Скачиваем только файлы изображений
            if file['download_url'].endswith(('png', 'jpg', 'jpeg', 'gif')):
                download_url = file['download_url']
                filename = download_url.split('/')[-1]
                image_response = requests.get(download_url, stream=True)
                if image_response.status_code == 200:
                    image_path = os.path.join(IMAGES_DIR, filename)
                    with open(image_path, 'wb') as image_file:
                        for chunk in image_response:
                            image_file.write(chunk)
                    print(f"Скачано: {filename}")
                else:
                    print(f"Ошибка загрузки изображения: {filename}")
    else:
        print("Не удалось получить данные от GitHub API")


# Вызов функции
download_images()
