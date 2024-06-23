FROM tomcat
COPY /abc_tech.war /usr/local/tomcat
EXPOSE 8005
CMD ["catalina.sh"]

