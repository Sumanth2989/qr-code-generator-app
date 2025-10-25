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

## Screenshots

### Docker Login Successful
![Docker Login](./Screenshot%202025-10-25%20at%2011.22.10 AM.png)

###  Running Container + Logs Showing QR Saved
![Docker Run Logs](./Screenshot%202025-10-25%20at%2011.24.57 AM.png)

### Docker Push Success (Digest Output)
![Docker Push Success](./Screenshot%202025-10-25%20at%2011.30.13 AM.png)

### Docker Hub Repository – Image Successfully Pushed
![Docker Hub Repo](./Screenshot%202025-10-25%20at%2011.33.32 AM.png)
