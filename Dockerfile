FROM ruby:3

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g yarn && \
    gem install rails bundler

ADD Gemfile* /app/
ADD package.json /app/
ADD yarn.lock /app/

RUN cd /app && \
    bundle install && \
    yarn install

WORKDIR /app
EXPOSE 3000
CMD [ "rails server -b 0.0.0.0" ]
