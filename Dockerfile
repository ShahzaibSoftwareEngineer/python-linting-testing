FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install flake8

CMD ["python", "-m", "unittest", "discover", "-s", "tests", "-p", "test_*.py"]
RUN flake8 .
