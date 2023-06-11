# Use the official NGINX image as the base
FROM nginx

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Download and unzip the code
RUN apt-get update && \
    apt-get install -y curl unzip && \
    curl -LJO https://www.free-css.com/assets/files/free-css-templates/download/page292/plumberz.zip && \
    unzip plumberz.zip && \
    rm plumberz.zip

# Expose port 80 for the web server
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]

