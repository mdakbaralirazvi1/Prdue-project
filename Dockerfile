FROM tomcat
COPY /abctechnological.war /usr/local/tomcat
EXPOSE 8005
CMD ["catalina.sh"]

