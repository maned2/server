# FROM eclipse-temurin:21-jdk
FROM eclipse-temurin:25-jre
# RUN apt update \
#   && apt install -y \
#     default-jre \
#     default-jdk
WORKDIR /usr/src/app
COPY ./data .
ENV PORT=25565
EXPOSE $PORT
RUN java -version
RUN chmod a+x /usr/src/app/entrypoint.sh
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]