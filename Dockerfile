FROM bitnami/minideb:stretch

LABEL version="1.0"
LABEL creator="David Barranco <d.baus@outlook.com>"
LABEL maintainer="Lennard Indlekofer <info@lennard-indlekofer.de>"

ENV USER="csgo"  
ENV HOME="/home/$USER" 
ENV INSTALLDIR="$HOME/csgoInstallDir"


RUN install_packages lib32stdc++6 lib32gcc1 wget  gzip

RUN adduser --disabled-password --gecos "" $USER  

COPY rootfs /

USER $USER

WORKDIR $HOME

RUN install_packages steamcmd

EXPOSE 27015
ENTRYPOINT ["/run.sh"]










