FROM python:3.6.0

RUN mkdir /app && pip install flask gunicorn
COPY app.py /app/app.py
WORKDIR /app
EXPOSE 8000

CMD ["gunicorn", "app:app", "--bind=0.0.0.0:8000", "--workers=1", "--log-file=-"]
