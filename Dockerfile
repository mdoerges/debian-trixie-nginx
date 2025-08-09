FROM debian:trixie-slim

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install --no-install-recommends --no-install-suggests -y ca-certificates libssl3
RUN apt-get install -y nginx

RUN apt-get clean && rm -rf /var/lib/apt/lists/* && rm /etc/nginx/sites-enabled/default
CMD ["nginx", "-g", "daemon off;"]
