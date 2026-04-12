FROM cm2network/steamcmd
# RUN apt install -y software-properties-common
WORKDIR /usr/src/app
COPY . .
RUN /home/steam/steamcmd/steamcmd.sh +force_install_dir /usr/src/app/data +login anonymous +app_update 739590 +quit
ENV PORT=3000
ENV PORT2=3001
EXPOSE $PORT
EXPOSE $PORT2
RUN ls -lah
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]