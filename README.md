docker build -t web100 -f Dockerfile .

docker run -d -p 8080:80 web100

curl http://localhost:8080

docker history web100
