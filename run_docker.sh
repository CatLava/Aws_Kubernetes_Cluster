# build docker image
docker build -t doofus909/udacity:app .

docker image ls

docker run -p 5000:5000 doofus909/udacity:app
docker run -it doofus909/udacity:app bash 
