#dockerfile1
FROM ruby:buster as ruby
RUN apt-get update
RUN bundle config --global frozon 1
WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
RUN jekyll build

FROM ubuntu/apache2
WORKDIR /var/www/html
RUN rm index.html
COPY --from=ruby /usr/src/app/_site .

#RUN rm /usr/share/nginx/html/index.html
#COPY ./_site usr/share/nginx/html/