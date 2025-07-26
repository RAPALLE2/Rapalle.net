# Use the official Debian image as the base image
FROM debian:bullseye-slim

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Create nginx user and group (if they don't exist)
RUN groupadd -r nginx && useradd -r -g nginx -s /bin/false nginx

# Create a directory for your website files
RUN mkdir -p /var/www/html

# Create the necessary directories and set the correct permissions for Nginx
RUN mkdir -p /var/log/nginx /var/lib/nginx/body /var/lib/nginx/fastcgi /var/lib/nginx/proxy /run/nginx && \
    chown -R nginx:nginx /var/www/html /var/log/nginx /var/lib/nginx /run/nginx

# Copy your website's files into the container (replace with your actual files)
COPY ./src/html /var/www/html/

# Configure Nginx (without the user directive in nginx.conf)
COPY ./src/config/nginx.conf /etc/nginx/nginx.conf
COPY ./src/config/default.conf /etc/nginx/sites-available/default

# Copy SSL certificates
COPY ./src/ssl /etc/nginx/ssl

# Expose port 80 to the outside world
EXPOSE 80
EXPOSE 8080
EXPOSE 443
EXPOSE 8443

# Remove the "user" directive from nginx.conf since it's ignored when running as a non-root user
RUN sed -i 's/^user .*/#user nginx;/g' /etc/nginx/nginx.conf

# Start Nginx when the container runs as root (default behavior)
CMD ["nginx", "-g", "daemon off;"]
