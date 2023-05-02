# Which version of python is required 
FROM python:latest

# Copy all file in the local file system into the container
COPY . .

# Install dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Expose port 8080 so that the container knows which port to listen on
EXPOSE 8080

# Define the command to run when the container starts
CMD ["python", "app.py"]
