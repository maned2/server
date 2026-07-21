FROM cm2network/steamcmd:steam-bookworm

ENV SERVER_PORT=28015
ENV QUERY_PORT=28017
EXPOSE $SERVER_PORT
EXPOSE $QUERY_PORT

WORKDIR /usr/src/app
COPY ./data .

RUN /usr/games/steamcmd +force_install_dir /usr/src/app +login anonymous +app_update 258550 validate +quit
RUN chmod +x /usr/src/app/runds.sh

COPY entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]