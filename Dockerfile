FROM python:3.6.0

COPY app.py /app

CMD ["python", "app.py"]