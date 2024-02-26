# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Define environment variable
ENV MODEL_PATH=/usr/src/app/models/my_model.pkl

# Run uvicorn to start your FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]