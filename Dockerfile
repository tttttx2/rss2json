# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask application code to the container
COPY app.py .

# Expose the port that the Flask application will listen on
EXPOSE 5000

# Set the command to run the Flask application
CMD ["python", "app.py"]
