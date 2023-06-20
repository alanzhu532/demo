FROM tomee:latest
ADD app.war /usr/local/tomee/webapps/
ADD tomcat-users.xml /usr/local/tomee/conf/
ADD settings.xml /usr/local/tomee/conf/
CMD ["catalina.sh", "run"]
HEALTHCHECK --interval=10s --timeout=3s --retries=6 CMD curl -f http://localhost:8080/APP.com/health || exit 1
EXPOSE 8080

