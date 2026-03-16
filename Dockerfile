FROM python:3.11-slim

WORKDIR /app

# Install Node.js for frontend build
RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Backend dependencies
COPY backend/requirements.txt /app/backend/requirements.txt
RUN pip install --no-cache-dir -r /app/backend/requirements.txt

# Frontend build
COPY frontend/package*.json /app/frontend/
WORKDIR /app/frontend
RUN npm ci

COPY frontend/ /app/frontend/
RUN npm run build

# Backend code
WORKDIR /app
COPY backend/ /app/backend/

# Copy frontend dist to be served by Flask
RUN mkdir -p /app/backend/static
RUN cp -r /app/frontend/dist/* /app/backend/static/

# Expose port
EXPOSE 5001

WORKDIR /app/backend
CMD ["python", "run.py"]
