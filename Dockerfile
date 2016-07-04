FROM java:6
MAINTAINER JS Minet

RUN apt-get update && apt-get install -y unzip

ADD http://meteorite.bi/downloads/saiku-latest.zip /home/

RUN unzip /home/saiku-latest.zip

WORKDIR /home/saiku-server

EXPOSE 8080

CMD [start-saiku.sh]
