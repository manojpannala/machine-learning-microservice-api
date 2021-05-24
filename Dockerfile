FROM python:3.9.5-slim-buster

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . /app
COPY data /app/data

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip && \
    pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 80, 443, 22
EXPOSE 80 443 22

## Step 5:
# Run app.py at container launch
CMD ["python3", "app.py"]