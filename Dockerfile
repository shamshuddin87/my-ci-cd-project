# Use Python base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy files
COPY requirements.txt requirements.txt
COPY app.py app.py

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
