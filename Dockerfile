FROM debian:9

RUN apt update -y \
   && apt install curl gnupg -y \
   
ADD . /app/
WORKDIR /app
