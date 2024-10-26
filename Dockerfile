# Use the official Python 3.11 Alpine image
FROM python:3.11-alpine

# Label to identify the maintainer
LABEL maintainer="farid.damania@gmail.com"

# Define environment variables for flexibility
ENV APP_HOME=/app
ENV APP_PORT=6969

# Copy all files from the local directory to the /app directory inside the container
COPY . $APP_HOME

# Set the working directory inside the container to /app
WORKDIR $APP_HOME

# Install the Python dependencies listed in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the custom port for Flask (now 5001)
EXPOSE $APP_PORT

# Use Python as the entrypoint
ENTRYPOINT ["python"]

# Define the default command to run the Flask app
CMD ["src/server.py"]
