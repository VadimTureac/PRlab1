FROM python:3.9
# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы проекта в контейнер
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY main.py .
# Открываем порт
EXPOSE 5000

CMD ["python", "main.py"]
