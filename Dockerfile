# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements and application code to the container
COPY . /app

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt && \
    python -m spacy download en_core_web_sm

# Expose the port on which Gradio will run
EXPOSE 7860

# Command to run the application
CMD ["python", "app.py"]
