# FROM python:3.9

# WORKDIR /app

# COPY . .

# RUN pip install --no-cache-dir -r requirements.txt

# EXPOSE 5000

# CMD ["flask", "run", "--host=0.0.0.0"]


FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5006

ENTRYPOINT ["flask", "run"]
CMD ["--host=0.0.0.0", "--port=5006"]
