# build docker image
sudo docker build -t doofus909/udacity:app .

sudo docker image ls

sudo docker run -p 5000:5000 doofus909/udacity:app
sudo docker run -it doofus909/udacity:app bash 
