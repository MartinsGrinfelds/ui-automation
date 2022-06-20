FROM maven:3.8.1-openjdk-11

LABEL AUTHOR="Martins Grinfelds"

RUN mkdir docker
WORKDIR /docker
COPY src src
COPY .gitignore pom.xml send_notification.sh testNG.xml ./

RUN mvn dependency:resolve
RUN mvn clean install -DskipTests
