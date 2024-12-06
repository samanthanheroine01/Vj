FROM python:3.10

# Set the working directory
WORKDIR /usr/src/app

# Copy requirements file
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Command to run your application
CMD ["python", "bot/init.py"]
