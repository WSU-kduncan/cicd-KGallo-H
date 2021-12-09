FROM httpd


COPY . /website



CMD ["docker run -dit --name testPage -p 8080:80 /website:/usr/local/apache2/htdocs/ httpd:2.4"]

