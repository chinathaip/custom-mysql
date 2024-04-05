FROM mysql:latest

# Set environment variables for MySQL
ENV MYSQL_DATABASE=ite442
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword
ENV MYSQL_ROOT_PASSWORD=1

# Expose the MySQL port
EXPOSE 3306
