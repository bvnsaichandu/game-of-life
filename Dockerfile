FROM tomcat:9-jre8

RUN rm -rf /opt/tomcat-9.0/webapps/*

COPY /var/lib/jenkins/workspace/gof-pipeline/gameoflife-web/target/gameoflife.war /opt/tomcat-9.0/webapps

EXPOSE 8090


