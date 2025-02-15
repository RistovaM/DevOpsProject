ARG TARGETPLATFORM=linux/amd64
FROM --platform=$TARGETPLATFORM python:3.9-slim

FROM python:3.9-slim
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# ENV FLASK_APP=app.py
# ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

# ENTRYPOINT ["flask", "run"]
# CMD ["--host=0.0.0.0", "--port=5000"]
CMD ["python", "app.py"]
