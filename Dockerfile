FROM python:3.10

WORKDIR /app1

# Copy the dependency file
COPY requirements.txt .

# Install dependencies inside the container
RUN pip install -r requirements.txt

# Copy your entire application folder into the container
COPY . .
EXPOSE 5000
# Run your Flask app
CMD ["python", "app4.py"]
