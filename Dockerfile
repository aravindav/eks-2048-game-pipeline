# Use an nginx base image
FROM nginx:alpine

# Copy 2048 game files from public repo (or bundle locally)
ADD https://github.com/gabrielecirulli/2048/archive/refs/heads/master.zip /usr/share/nginx/html/

# Unzip and move content
RUN apk add --no-cache unzip && \
    unzip /usr/share/nginx/html/master.zip -d /usr/share/nginx/html/ && \
    cp -r /usr/share/nginx/html/2048-master/* /usr/share/nginx/html/ && \
    rm -rf /usr/share/nginx/html/2048-master /usr/share/nginx/html/master.zip

# Expose port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
