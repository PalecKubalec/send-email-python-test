import smtplib, ssl
import sys

port = 465  # For SSL
password = sys.argv[1]
my_mail_address = sys.argv[2]

# Create a secure SSL context
context = ssl.create_default_context()

with smtplib.SMTP_SSL("smtp.gmail.com", port, context=context) as server:
    server.login(my_mail_address, password)
    subject = 'Test'
    content = 'Hello. This is testing email.'
    message = 'Subject: {}\n\n{}'.format(subject, content)
    server.sendmail(my_mail_address, my_mail_address, message)
