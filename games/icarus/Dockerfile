FROM cm2network/steamcmd
# RUN apt install -y software-properties-common
RUN /home/steam/steamcmd/steamcmd.sh +force_install_dir /usr/src/app +login anonymous +app_update 2089300 +quit
WORKDIR /usr/src/app
RUN ls -lah
COPY ./data .
ENV PORT=17777
ENV PORT2=27015
EXPOSE $PORT
EXPOSE $PORT2
RUN chmod a+x /usr/src/app/entrypoint.sh
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]