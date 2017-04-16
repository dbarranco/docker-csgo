#!/bin/bash -e

GREEN='\033[0;32m'
NC='\033[0m' #No color
GSLTK=$GAME_SERVER_LOGIN_TOKEN


echo -e "${GREEN}Installing the csgo server...${NC}"

$HOME/steamcmd.sh +login anonymous +force_install_dir $INSTALLDIR +app_update 740 validate +quit

echo -e "${GREEN}Starting the csgo server...${NC}"
if [ -z "$GLSTK" ]; then

   $INSTALLDIR/srcds_run game csgo \
			 -console \
			 -usercon \
			 +game_type 0 \
			 +game_mode 0 \
			 +mapgroup mg_active \
			 +map de_dust2
   
   else

       $INSTALLDIR/srcds_run game csgo \
                      -console \
                      -usercon \
                      +game_type 0 \
                      +game_mode 0 \
                      +mapgroup mg_active \
                      +map de_dust2 \
		      +sv_setsteamaccount $GLSTK \
		      -net_port_try 1
       
fi
