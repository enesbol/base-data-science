# Use the official Python base image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy the local code to the container
COPY . /app

# Install pipenv
RUN pip install pipenv

# Install project dependencies using pipenv
RUN pipenv install --deploy --ignore-pipfile

# Expose the port the app runs on
EXPOSE 8000

# Define the command to run the application
CMD ["pipenv", "run", "python", "app.py"]
