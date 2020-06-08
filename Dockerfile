FROM python:3.6.0

RUN mkdir /app && pip install flask
COPY app.py /app/app.py
WORKDIR /app
EXPOSE 8000

CMD ["python", "app.py"]