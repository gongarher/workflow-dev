FROM nginx:alpine
COPY src/index.html /usr/share/nginx/html/

# Override the nginx start from the base container
COPY src/start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]