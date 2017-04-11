FROM bitnami/minideb-extras:jessie-r13

MAINTAINER David Barranco <d.baus@outlook.com>

ENV USER csgo
ENV INSTALLDIR $home/csgoDir
ENV HOME /home/$USER

RUN dpkg --add-architecture i386

RUN install_packages lib32stdc++6 lib32gcc1

RUN adduser --disabled-password --gecos "" $USER 

USER $USER
WORKDIR $HOME

RUN curl -s https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz | tar -vxz -C ~

RUN ./steamcmd.sh +login anonymous +force_install_dir $INSTALLDIR +app_update 740 validate +quit; exit 0










