FROM ubuntu-jdk-maven

RUN mkdir docker
WORKDIR /docker

COPY . .
RUN mvn dependency:resolve
RUN mvn clean install -DskipTests