FROM ubuntu:latest
RUN apt-get update && \ 
    apt-get install --no-install-recommends -y nginx; \
    echo "daemon off;" >> /etc/nginx/nginx.conf
    
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/nginx"]