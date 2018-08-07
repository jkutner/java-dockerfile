FROM heroku/heroku:18

RUN apt-get update -y
RUN apt-get install openjdk-8-jdk-headless -y

COPY . /app/
WORKDIR /app

RUN ./mvnw clean install

RUN rm -rf $HOME/.m2

CMD ["java", "-Dserver.port=$PORT", "-jar", "target/java-getting-started-1.0.jar"]
