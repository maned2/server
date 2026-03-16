FROM debian
RUN apt update \
  && apt install -y \
    default-jre \
    default-jdk
WORKDIR /usr/src/app
COPY ./data .
ENV PORT=25565
EXPOSE $PORT
RUN java -version
ENTRYPOINT ["java", "-Xmx4G", "-Xms4G", "-jar", "server.1.21.11.jar", "nogui"]