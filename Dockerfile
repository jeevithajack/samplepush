# Base image for Apache
FROM httpd:latest

# Base image for MySQL
FROM mysql:latest

# Base image for Tomcat
FROM tomcat:latest

# Copy custom PHP file to Apache's web directory
COPY my-php-page.php /usr/local/apache2/htdocs/

# Expose port 80 for Apache
EXPOSE 80

# Start Apache
CMD ["httpd-foreground"]
