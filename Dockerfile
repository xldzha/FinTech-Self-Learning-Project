FROM python:3.10-slim
WORKDIR /usr/src/app
# Get requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Copy code
COPY . .
# Expose Gradio's default port
EXPOSE 7860
# Set environment variables for Docker deployment
ENV GRADIO_SERVER_NAME="0.0.0.0"
ENV GRADIO_SERVER_PORT="7860"
# Run the application
CMD ["python", "app.py"]