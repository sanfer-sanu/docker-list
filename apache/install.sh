sudo docker run -dit --name apache -p 8082:80 -v /var/www/htdocs/:/usr/local/apache2/htdocs/ httpd:2.4
