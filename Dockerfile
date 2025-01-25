FROM python:3.13
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /webapp
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /webapp/