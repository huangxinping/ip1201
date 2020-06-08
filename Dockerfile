FROM python:3.6.0

COPY app.py /app
WORKDIR /app
EXPOSE 8000

CMD ["python", "app.py"]