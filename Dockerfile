FROM python:3.11-slim

RUN apt update -y && apt install awscli -y
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

RUN python3 main.py

CMD ["python3", "app.py"]