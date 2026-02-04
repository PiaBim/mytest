FROM rockylinux:9
RUN dnf -y update && dnf -y install java-17-openjdk wget tar && dnf clean all
RUN wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.98/bin/apache-tomcat-9.0.98.tar.gz && \
    tar xvf apache-tomcat-9.0.98.tar.gz && \
    mv apache-tomcat-9.0.98 /usr/local/tomcat && \
    rm apache-tomcat-9.0.98.tar.gz
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

