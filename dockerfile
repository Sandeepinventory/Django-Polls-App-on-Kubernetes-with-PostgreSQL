FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/
WORKDIR /app/django-polls
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
