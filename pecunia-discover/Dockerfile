FROM openjdk:8-jre
COPY target/pecunia-discover-0.0.1.jar service-discovery.jar
ADD entrypoint.sh entrypoint.sh
CMD [ "entrypoint.sh" ]
ENTRYPOINT ["sh"]