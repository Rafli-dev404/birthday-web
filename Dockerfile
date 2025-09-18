FROM tomcat:10-jre17
RUN rm -rf /usr/local/tomcat/webapps/*
COPY BirthdayWeb.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]