# Use the official Python image
FROM python:3.12-slim-bullseye

# Set working directory
WORKDIR /app

# Install deps first for better caching
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Create non-root user and writable dirs
RUN useradd -m myuser && mkdir logs qr_codes && chown myuser:myuser logs qr_codes

# Copy source as non-root
COPY --chown=myuser:myuser . .

# Drop privileges
USER myuser

# Default runtime
ENTRYPOINT ["python", "main.py"]
# Default args (can be overridden)
CMD ["--url", "http://github.com/kaw393939"]