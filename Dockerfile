FROM python:3.9-slim

# Install nano
RUN apt-get update && apt-get install -y nano && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . . 

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]