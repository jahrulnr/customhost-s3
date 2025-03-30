FROM nginx:1.27-alpine

COPY nginx/start.sh /start
RUN chmod +x /start

COPY .env /etc/

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

CMD [ "sh", "/start" ]