FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files to the container
COPY . .

# Install dependencies
RUN pip install flake8

# Default command
CMD ["python", "-m", "unittest", "discover"]
