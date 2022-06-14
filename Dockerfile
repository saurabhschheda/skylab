FROM public.ecr.aws/lambda/java:11

#ARG JAR_FILE=build/libs/*.jar

#COPY ${JAR_FILE} app.jar
COPY build/dependency/* ${LAMBDA_TASK_ROOT}/lib/
COPY build/classes/java/main ${LAMBDA_TASK_ROOT}

#ENTRYPOINT ["java","-jar","/app.jar"]
CMD [ "com.skylab.client.lambda.LambdaHandler::handleRequest" ]
