FROM nginx:1
RUN apt-get update
RUN rm /usr/share/nginx/html/index.html
COPY ./_site usr/share/nginx/html/