FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install flake8 for linting and ensure dependencies for testing
RUN pip install flake8 unittest

# Run flake8 to check for PEP 8 compliance
RUN flake8 .

# Run the unit tests
CMD ["python", "-m", "unittest", "discover", "-s", "tests", "-p", "test_*.py"]