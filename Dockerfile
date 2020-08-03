FROM openjdk:14-slim-buster

RUN apt-get update
RUN apt-get install --yes wget unzip xvfb liblwjgl-java tini jq

COPY entrypoint.sh .

ENTRYPOINT ["/usr/bin/tini", "--", "./entrypoint.sh"]

EXPOSE 58887/udp
EXPOSE 58888/tcp
