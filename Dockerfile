#dockerfile1
FROM ruby:buster as ruby
RUN apt-get update
RUN bundle config --global frozon 1
RUN apt-get install -y bundler



#RUN rm /usr/share/nginx/html/index.html
#COPY ./_site usr/share/nginx/html