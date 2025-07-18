# Use an official Python runtime as a parent image
FROM python:3.8-slim 
#slim - same featues in minimal size

# Set the working directory in the container
WORKDIR /app
# create a folder named app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirement.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]