FROM python:3.8
WORKDIR /app
COPY send_mail.py /app
RUN ls /app
ENTRYPOINT ["python3", "send_mail.py"]

