# Part 1  

 To install Docker for WSL2 I went to `https://docs.docker.com/desktop/windows/install/` and downloaded Docker desktop. Then once I had Docker installed I used the command `docker pull httpd` to get apache as my webserver. Inside the folder that has the directory containing my website contents, I made a `Dockerfile`, inside the file I put `FROM httpd:2.4` and `COPY . /website/ /usr/local/apache2/htdocs/` where /website/ is the folder with my website content. To build the container use the command `docker build -t project6:latest .` and then use `docker run -dit -p 8080:80 --name project6Website project6` to start up your container, the website contents should be viewable by opening a browser, and in the address bar, putting either `yourIPAddress:8080` or `localhost:8080`. The -p in the docker run command binds the container's port 80 to port 8080 on the host.  

# Part 2  

On hub.docker.com login into your account and navigate to the repositories tab. There will be a list of all your repositories, from there click `create repository`. You will be prompted for a name, description, and what account you want to make the repository under. Once you've filled those out you can choose whether or not to make the repository public or private, pick one and create the repository.  

You can allow Dockerhub authentication via CLI by going into your account settings and, under the security tab, generate an authentication token. Log in using the `docker login -u username` and when prompted for the password input the generated token.
 
