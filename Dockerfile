FROM opensuse/leap:15.6

WORKDIR /minecraft/server

RUN zypper in -y java-21-openjdk

ENTRYPOINT ["./start-server.sh"]

EXPOSE 25565
EXPOSE 19133
