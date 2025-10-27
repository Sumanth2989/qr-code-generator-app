# QR Code Generator (Dockerized)

This project generates timestamped PNG QR codes for any given URL. The QR code is saved inside the container (or mapped volume), and logs provide the exact output path for convenience.

---

## ✨ Features

- Generate QR codes via command-line (`--url https://example.com`)
- Timestamped filenames (e.g., `QRCode_20251025152150.png`)
- Fully Dockerized – no local dependencies required
- Customizable QR colors via environment variables
- Works with Docker & Docker Compose

---

## 🚀 Run with Docker

```bash
# Create a folder on host for QR output
mkdir -p ~/qr_output

# Run container
docker run -d --name qr-generator \
  -v ~/qr_output:/app/qr_codes \
  sumanthchand23/qr-code-generator-app:latest --url https://www.njit.edu

# View logs
docker logs -f qr-generator

