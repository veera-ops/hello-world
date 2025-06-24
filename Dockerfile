FROM openjdk:17-alpine
COPY HelloWorld.java /app/HelloWorld.java
WORKDIR /app
RUN javac HelloWorld.java
CMD ["java", "HelloWorld"]
