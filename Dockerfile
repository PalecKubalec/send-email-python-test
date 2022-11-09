FROM python:3.8
WORKDIR /app
COPY resources/python/send_mail.py /app
ENTRYPOINT ["python3", "send_mail.py"]

