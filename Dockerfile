FROM java:8
MAINTAINER "Namazu510 <namazu510@hotmail.co.jp>"

WORKDIR /
RUN wget -O jetty-runner.jar http://central.maven.org/maven2/org/eclipse/jetty/jetty-runner/9.4.0.RC3/jetty-runner-9.4.0.RC3.jar
COPY ./entrypoint.sh entrypoint.sh

EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
