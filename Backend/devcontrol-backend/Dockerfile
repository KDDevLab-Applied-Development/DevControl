# Backend Dockerfile
FROM openjdk:17-jdk-alpine AS build

WORKDIR /app

# Copy Maven wrapper and pom.xml
COPY mvnw.cmd mvnw.cmd
COPY .mvn .mvn
COPY pom.xml .

# Download dependencies
RUN ./mvnw.cmd dependency:go-offline -B

# Copy source code
COPY src src

# Build the application
RUN ./mvnw.cmd clean package -DskipTests

# Production stage
FROM openjdk:17-jre-alpine

WORKDIR /app

# Copy the built jar
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
