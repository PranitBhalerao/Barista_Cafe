# Use an official Python runtime as a base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project directory into the container
COPY . /app

Expose the port the app runs on
EXPOSE 8080

# Define environment variables (if needed)
# ENV VARIABLE_NAME=value

# Command to run the application
CMD ["python3", "app.py"]
