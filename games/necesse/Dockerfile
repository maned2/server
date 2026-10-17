FROM cm2network/steamcmd
# RUN apt install -y software-properties-common
WORKDIR /usr/src/app
RUN /home/steam/steamcmd/steamcmd.sh +force_install_dir /usr/src/app +login anonymous +app_update 1169370 +quit
RUN cd /usr/src/app && ls -lah

# COPY ./main.zip


# COPY ./entrypoint.sh ./entrypoint.sh
# RUN chmod a+x /usr/src/app/entrypoint.sh
# ENTRYPOINT ["./entrypoint.sh"]
RUN chmod +x /usr/src/app/StartServer-nogui.sh
CMD ["/usr/src/app/StartServer-nogui.sh"]