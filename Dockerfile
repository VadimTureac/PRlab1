# Используем официальный образ Python
FROM python:3.9

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы проекта в контейнер
COPY requirements.txt .
RUN pip install -r requirements.txt

# Копируем код приложения
COPY main.py .

# Открываем порт 5000
EXPOSE 5000

# Запускаем приложение
CMD ["python", "main.py"]
