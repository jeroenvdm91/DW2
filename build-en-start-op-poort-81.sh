 
docker build -t dw2 .

docker run -dt -p 81:80 --name DW2container dw2
