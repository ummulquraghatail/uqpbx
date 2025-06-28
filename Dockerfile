# Base Image
FROM ubuntu:20.04

# Disable interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update system and install Apache
RUN apt update && \
    apt install -y apache2 && \
    apt clean

# Set ServerName to suppress warning
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Add a basic index.html to verify the server is running
RUN echo "<h1>✅ Apache is working!</h1>" > /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
