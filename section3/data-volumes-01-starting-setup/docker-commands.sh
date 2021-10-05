# image with no argument
docker build -t feedback:no_arg .
# image with argument
docker build -t feedback:arg --build-arg DEFAULT_PORT=8080 .

# container with env variable
docker run -d --rm -p 8000:8000 --env PORT=8000 --name feedback -v feedback:/app/feedback -v "$(pwd):/app" -v /app/node_modules -v /app/temp feedback
# container with env variable file
docker run -d --rm -p 8000:8000 --env-file ./.env --name feedback-env-file -v feedback:/app/feedback -v "$(pwd):/app" -v /app/node_modules -v /app/temp feedback

# docker with arguments
docker run -d --rm -p 8080:8080 --name feedback_arg -v feedback:/app/feedback -v "$(pwd):/app" -v /app/node_modules -v /app/temp feedback:arg
# docker with no arguments
docker run -d --rm -p 80:80 --name feedback_noarg -v feedback:/app/feedback -v "$(pwd):/app" -v /app/node_modules -v /app/temp feedback:no_arg

docker logs -f feedback

docker stop feedback
docker volume prune
docker rm feedback
docker rmi feedback

http://localhost:8000
http://localhost:8000/feedback/test1.txt