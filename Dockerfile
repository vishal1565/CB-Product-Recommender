FROM nginx:1.21

RUN rm -rf /usr/share/nginx/html/*
COPY ui-dist/ /usr/share/nginx/html/

