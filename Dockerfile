FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy all source files
COPY . .

# Compile Java files with package support
RUN javac -d . *.java

# Run the main class (with package name)
CMD ["java", "BankManagementSystem.Login"]
