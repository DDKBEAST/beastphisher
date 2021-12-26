FROM debian:latest
LABEL MAINTAINER="https://github.com/DDKBEAST/beastphisher.git"

WORKDIR beastphisher/
ADD . /beastphisher

RUN apt update && apt full-upgrade -y && apt install -y curl unzip wget && apt install --no-install-recommends -y php && apt clean
CMD ["./beastphish.sh"] 
