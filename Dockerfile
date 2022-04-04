FROM python:3.8

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8001

RUN  python manage.py migrate

CMD ["python", "manage.py","runserver", "0.0.0.0:8001"]