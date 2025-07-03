# Base image with Python
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application code and model files
COPY . .

# Expose Streamlit’s default port
EXPOSE 8501

# Run the app with Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
