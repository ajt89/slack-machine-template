FROM python:3.7.3-slim-stretch

COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

WORKDIR /slack

COPY . .

EXPOSE 8080

CMD ["slack-machine"]
