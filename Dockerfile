# Step 1: Use an official lightweight Nginx image to serve static files
FROM nginx:alpine

# Step 2: Copy the HTML file into the default Nginx web root folder
COPY index.html /usr/share/nginx/html/index.html

# Step 3: Expose port 80 to access the web server outside the container
EXPOSE 80

# Step 4: Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
