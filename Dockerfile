FROM alpine

RUN apk update && apk add nginx supervisor

COPY index.html /var/www/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisord.conf

CMD ["supervisord", "-c", "/etc/supervisord.conf"]
