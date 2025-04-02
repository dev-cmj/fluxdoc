# 빌드 스테이지
FROM gradle:8.5-jdk21 AS build
WORKDIR /app
COPY . .
RUN gradle clean build -x test --no-daemon

# 런타임 스테이지
FROM openjdk:21-slim
WORKDIR /app
COPY --from=build /app/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]