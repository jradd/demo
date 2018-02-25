FROM python:3.6
MAINTAINER Jeremy Redd <contact@jeremyredd.com>
COPY requirements.txt /app/
WORKDIR /app
RUN pip3 install -r requirements.txt
COPY app /app/app/
COPY manage.py /app/
COPY migrations /app/migrations/
COPY runserver.py /app/
COPY config.py /app/
EXPOSE 8000
CMD ["python", "runserver.py"]

