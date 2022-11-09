FROM python:3.8
WORKDIR /app
COPY send_mail.py .
ENTRYPOINT ["python3", "send_mail.py"]

