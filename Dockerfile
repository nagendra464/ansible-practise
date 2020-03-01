FROM tomcat:8.5.37-jre8
LABEL nagendra <nagendra.bheemuni@gmail.com>
RUN apt-get update
RUN apt-get install default-jdk -y
ADD naglogin-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]