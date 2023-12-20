# Setting up credentials
DOCKER_HUB_USERNAME=prasanna751
DOCKER_HUB_PASSWORD=dckr_pat_lKLxwXVW_JBh8SatnnpE_09tVEo
IMAGE_NAME=prasanna751/php-image

# Tag contains current date and git commit hash
TAG=$(date +"%Y-%m-%d")_$(git rev-parse --short HEAD)

# Log in to Docker Hub
docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWORD

# Build the Docker image
docker build -t $IMAGE_NAME:$TAG .

# Push the Docker image to Docker Hub
docker push $IMAGE_NAME:$TAG

# Remove the Docker image
docker rmi $IMAGE_NAME:$TAG

# Running docker compose
echo 'y' | docker-compose up -d