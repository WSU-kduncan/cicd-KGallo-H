# Part 1  

1. To install Docker for WSL2 I went to `https://docs.docker.com/desktop/windows/install/` and downloaded Docker desktop. Then once I had Docker installed I used the command `docker pull httpd` to get apache as my webserver. Inside the folder that has the directory containing my website contents, I made a `Dockerfile`, inside the file I put `FROM httpd:2.4` and `COPY . /website/ /usr/local/apache2/htdocs/` where /website/ is the folder with my website content. To build the container use the command `docker build -t my-apache2 .`

