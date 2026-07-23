FROM cm2network/steamcmd:steam-bookworm

ENV SERVER_PORT=28015
ENV QUERY_PORT=28017
EXPOSE $SERVER_PORT
EXPOSE $QUERY_PORT

WORKDIR /usr/src/app
COPY ./data ./server

RUN /home/steam/steamcmd/steamcmd.sh +force_install_dir /usr/src/app +login anonymous +app_update 258550 validate +quit
RUN chmod +x /usr/src/app/runds.sh

USER root
COPY scripts /scripts
RUN chmod a+x /scripts/entrypoint.sh
RUN chmod a+x /scripts/cfg_write.sh
RUN chown -R steam:steam /scripts

# USER steam
ENTRYPOINT ["/scripts/entrypoint.sh"]