# Stop existing container
docker-compose down

# Build the custom image
docker-compose build

# Start the new container
docker-compose up -d

docker logs -f --tail=100 n8n
