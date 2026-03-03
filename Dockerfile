# ─────────────────────────────────────────────
#  Dockerfile — Static HTML site via Nginx
# ─────────────────────────────────────────────
FROM nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into the container
COPY index.html /usr/share/nginx/html/index.html

# Optional: copy any extra assets (images, css, js)
# COPY assets/ /usr/share/nginx/html/assets/

# Expose port 80
EXPOSE 80

# Nginx starts automatically
CMD ["nginx", "-g", "daemon off;"]
