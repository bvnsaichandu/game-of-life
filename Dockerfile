FROM tomcat:9
RUN rm -rf /opt/tomcat-9.0/webapps/*
WORKDIR /usr/local/tomcat/webapps
COPY target/gameoflife.war .
EXPOSE 8090


