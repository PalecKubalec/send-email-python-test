FROM python:3.8
WORKDIR /app
COPY send_mail.py /app
RUN ls /app
CMD ["python3", "/app/send_mail.py"]

