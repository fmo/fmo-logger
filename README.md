## DOCKER BUILD

docker build -t fmo/logger .

docker run -d --rm -p 9300:8000 -v $(pwd):/app --name fmo-logger fmo/logger
