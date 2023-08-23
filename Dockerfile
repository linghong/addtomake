FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

# Define environment variable for Flask to run in production mode
ENV FLASK_ENV=production

CMD ["python", "run.py"]