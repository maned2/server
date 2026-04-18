FROM cm2network/steamcmd
# RUN apt install -y software-properties-common
WORKDIR /usr/src/app
RUN /home/steam/steamcmd/steamcmd.sh +force_install_dir /usr/src/app +login anonymous +app_update 4129620 +quit
RUN ls -lah
COPY . .
RUN chmod a+x /usr/src/app/entrypoint.sh
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]