FROM debian

RUN apt update -y \
   && apt install curl gnupg -y \
   
ADD . /app/
WORKDIR /app
