FROM ubuntu

RUN apt update && apt install default-jre -y
RUN mkdir -p /data/fibo
COPY build/libs/fibonacci-service-0.1.0.jar /data/fibo

EXPOSE 8080

CMD ["java", "-jar", "/data/fibo/fibonacci-service-0.1.0.jar"]
