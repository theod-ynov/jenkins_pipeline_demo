FROM debian:9

RUN apt-get update -y \
   && apt-get install curl gnupg -y \
   && curl -sL https://deb.nodesource.com/setup_10.x | bash \
   && apt-get install nodejs -y \
   && apt-get clean -y

ADD . /app/
WORKDIR /app
RUN npm install

EXPOSE 2368
VOLUME /app/logs

CMD npm run start
