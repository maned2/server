FROM cm2network/steamcmd:root

ENV WORLD=world
ENV SLOTS=10
ENV OWNER=""
ENV MOTD="This server is made possible by Docker!"
ENV PASSWORD=""
ENV PAUSE=0
ENV GIVE_CLIENTS_POWER=1
ENV LOGGING=1
ENV ZIP=0
ENV JVMARGS=""

RUN apt-get update && \
    apt-get install -y --no-install-recommends openjdk-21-jre-headless && \
    rm -rf /var/lib/apt/lists/*

USER steam

# RUN apt install -y software-properties-common
WORKDIR /usr/src/app
RUN /home/steam/steamcmd/steamcmd.sh +force_install_dir /usr/src/app +login anonymous +app_update 1169370 +quit
RUN cd /usr/src/app && ls -lah

# COPY ./main.zip


# COPY ./entrypoint.sh ./entrypoint.sh
# RUN chmod a+x /usr/src/app/entrypoint.sh
# ENTRYPOINT ["./entrypoint.sh"]
# RUN chmod +x /usr/src/app/StartServer-nogui.sh
# CMD ["/usr/src/app/StartServer-nogui.sh"]



# CMD ["java", " ${JVMARGS} -jar Server.jar -nogui -localdir -world \"${WORLD}\" -slots \"${SLOTS}\" -owner \"${OWNER}\" -motd \"${MOTD}\" -password \"${PASSWORD}\" -pausewhenempty \"${PAUSE}\" -giveclientspower \"${GIVE_CLIENTS_POWER}\" -logging \"${LOGGING}\" -zipsaves \"${ZIP}\""]
CMD ["bash", "-c", "java ${JVMARGS} -jar Server.jar -nogui -localdir -world \"${WORLD}\" -slots \"${SLOTS}\" -owner \"${OWNER}\" -motd \"${MOTD}\" -password \"${PASSWORD}\" -pausewhenempty \"${PAUSE}\" -giveclientspower \"${GIVE_CLIENTS_POWER}\" -logging \"${LOGGING}\" -zipsaves \"${ZIP}\""]
