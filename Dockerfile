FROM python:3.12.6-alpine3.20

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the image
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application into the image
COPY . .

# Expose the port that the app runs on
EXPOSE 8000

# Run the apps
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]