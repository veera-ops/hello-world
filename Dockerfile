FROM openjdk:17-alpine

WORKDIR /app

COPY . .

RUN javac -cp .:junit-5.9.3.jar HelloWorld.java HelloWorldTest.java

# Run tests
RUN java -jar junit-platform-console-standalone-1.9.3.jar \
    --class-path . \
    --scan-class-path

CMD ["java", "HelloWorld"]
