# Use an official Nginx image as the base image
FROM nginx:latest

# Copy the static files to the default Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 8080
EXPOSE 8080

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
