# Deployment Guide

## Quick Start with Docker

1. **Prerequisites**
   - Docker and Docker Compose installed
   - Port 3002 available

2. **Build and Run**
   ```bash
   docker-compose up -d --build
   ```

3. **Access the Application**
   - Open http://localhost:3002 in your browser

4. **Health Check**
   - Visit http://localhost:3002/health to verify the service is running

## Manual Testing (Without Docker)

1. **Serve with Python**
   ```bash
   python -m http.server 8000
   ```
   Then visit http://localhost:8000

2. **Serve with Node.js (if you have http-server)**
   ```bash
   npm install -g http-server
   http-server -p 8000
   ```

## Docker Commands

- **Build only**: `docker-compose build`
- **Start**: `docker-compose up -d`
- **Stop**: `docker-compose down`
- **View logs**: `docker-compose logs -f`
- **Rebuild and restart**: `docker-compose up -d --build`

## Environment Variables

No environment variables are required for basic operation. The app runs entirely in the browser.

## Ports

- **Application**: 3002 (maps to container port 80)
- **Health Check**: http://localhost:3002/health

## Troubleshooting

1. **Port conflicts**: Change the port in docker-compose.yml from "3002:80" to another port
2. **CORS issues**: The app includes multiple proxy fallbacks for API calls
3. **Cache issues**: Clear browser cache or use incognito mode
4. **API failures**: The app will retry with different CORS proxies automatically

## Production Deployment

For production, consider:
- Using a reverse proxy (nginx/Traefik)
- Setting up proper SSL certificates
- Implementing proper logging and monitoring
- Using a container orchestration platform (Docker Swarm, Kubernetes)

## Files Overview

- `Dockerfile`: Container definition
- `docker-compose.yml`: Service orchestration
- `nginx.conf`: Web server configuration
- `index.html`: Main application
- `script.js`: Application logic
- `styles.css`: Compiled Tailwind CSS
- `package.json`: Node.js dependencies (for development)