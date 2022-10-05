FROM openjdk:8-jre
COPY target/pecunia-api-gateway-0.0.1.jar gateway.jar
ADD entrypoint.sh entrypoint.sh
CMD [ "entrypoint.sh" ]
ENTRYPOINT ["sh"]