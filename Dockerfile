# Use a Python base image (slim variant for smaller size)
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code and model files
COPY . .

# Expose the Streamlit default port
EXPOSE 8501

# Run the Streamlit app on container start
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]

