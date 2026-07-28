FROM eclipse-temurin:25-jre
WORKDIR /usr/src/app
COPY ./data .
ENV PORT=25565
EXPOSE $PORT
RUN java -version
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]