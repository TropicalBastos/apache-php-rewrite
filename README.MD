## Apache2 (rewrite enabled) with php7 on Ubuntu 16.04 LTS

This is a docker image with Ubuntu 16.04 LTS with apache2, php7/composer and apache's rewrite module enabled

To access site contents from outside the container you should map to /var/www

Includes composer for easy download of php libraries

### Examples

- plain, accessible on port 8080 `docker run -d -p 8080:80 tropicalbastos/apache-php-rewrite`
- with external contents in /home/tropicalbastos/html `docker run -d -p 8080:80 -v /home/tropicalbastos/html:/var/www/html tropicalbastos/apache-php-rewrite`

The docker container is started with the -d flag so it will run in the background. To run commands or edit settings inside
the container run `docker exec -ti <container id> /bin/bash'
 