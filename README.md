# Board Game Collection Browser

A beautiful web application for browsing and filtering your BoardGameGeek collection with advanced search capabilities and stunning visuals.

## Features

- Connect to BoardGameGeek API to fetch your collection
- Advanced filtering by players, playtime, complexity/weight, rating, and status
- Beautiful responsive design with mobile-friendly interface
- Caching system for faster subsequent loads
- Complexity/weight data integration for enhanced filtering

## Quick Start

### Using Docker

1. Clone this repository
2. Run with Docker Compose:
   ```bash
   docker-compose up -d
   ```
3. Open http://localhost:3002 in your browser

### Development

1. Install dependencies:
   ```bash
   npm install
   ```
2. Build CSS (if modifying Tailwind):
   ```bash
   npm run build-css
   ```
3. Serve the files using any web server

## How to Use

1. Enter your BoardGameGeek username
2. If you have cached data, choose whether to use it or fetch fresh data
3. Browse your collection with the powerful filtering tools
4. Click on any game card to view more details on BGG

## API Dependencies

This app uses:
- BoardGameGeek JSON API for collection data
- BoardGameGeek XML API for complexity/weight ratings
- Multiple CORS proxies for reliable API access

## Technology Stack

- Pure HTML/CSS/JavaScript (no frameworks)
- Tailwind CSS for styling
- Docker for containerization
- Nginx for serving static files

## License

This project is open source and available under the MIT License.