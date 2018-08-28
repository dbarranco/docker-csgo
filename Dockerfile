FROM debian:stretch

LABEL version="1.0"
LABEL creator="David Barranco <d.baus@outlook.com>"
LABEL maintainer="Lennard Indlekofer <info@lennard-indlekofer.de>"

ENV USER="csgo"  
ENV HOME="/home/$USER" 
ENV INSTALLDIR="$HOME/csgoInstallDir"


RUN apt install lib32stdc++6 lib32gcc1 wget  gzip

RUN adduser --disabled-password --gecos "" $USER  

COPY rootfs /

USER $USER

WORKDIR $HOME

RUN apt install steamcmd

EXPOSE 27015
ENTRYPOINT ["/run.sh"]










