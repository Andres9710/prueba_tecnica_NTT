# Api technical test in karate

This project uses Karate to perform tests on the APIs of the "PetStore" page. Testing of adding a pet, querying pets by ID, updating a pet's name and status, and querying pets by status. The inputs and outputs of each test are captured, validation tests are performed, and the expected results are verified. This makes it possible to ensure the correct functioning of the "PetStore" APIs and to guarantee that the operations of adding, consulting and updating pets are carried out successfully.

## 1. Prerequisitos

Make sure you have the following technologies and versions installed on your local machine:

- Local machine with Windows 10 operating system
- IntelliJ IDE version 2023.1
- Gradle version 8.2 (must be in environment variable)
- JDK version 1.8 (must be in environment variable)

## 2. test run in terminal

gradlew clean test -i

## 3. Run parallel test in IntelliJ IDE

Run the class ManagementTest.java 

# Execution reports in the cucumber-html-reports folder
The reports will be available in the build/cucumber-html-reports/
The reports are in .html format for example:
- report-feature_810646683.html
- report-feature_2_3736200523.html
- report-feature_1_2524714633.html
