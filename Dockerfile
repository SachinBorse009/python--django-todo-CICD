FROM python:3
RUN pip install django==4.2.3

COPY . .

RUN python3 manage.py makemigrations
RUN python3 manage.py migrate

CMD ["python","manage.py","runserver","0.0.0.0:8000"]

