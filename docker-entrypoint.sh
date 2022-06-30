#!/bin/sh
set -e
if [ "$1" = '' ]; then
    if [ "$VALIDATE" = 'true' ]; then
        steamcmd +@sSteamCmdForcePlatformType windows +login anonymous +force_install_dir ${GAMEDIR} +app_update ${GAME_ID} validate +quit
    else
	steamcmd +@sSteamCmdForcePlatformType windows +login anonymous +force_install_dir ${GAMEDIR} +app_update ${GAME_ID} +quit
    fi

    if [ ! -d /root/.wine ]; then
        echo "[boot] Wine is not ready, initializing..."
        WINEARCH=win64 winecfg > /dev/null 2>&1
        sleep 5
        echo "[boot] Wine initialized"
    fi

    echo "[boot] Starting PixarkServer..."

    xvfb-run --auto-servernum --server-args='-screen 0 640x480x24:32' wine64 ${GAMEDIR}/ShooterGame/Binaries/Win64/PixARKServer.exe "CubeWorld_Light?listen?MaxPlayers=${MAXPLAYERS}?SessionName=${SERVERNAME}?Port=${PORT}?QueryPort=${QUERYPORT}?RCONPort=${RCONPORT}?ServerPassword=54358602?CULTUREFORCOOKING=en" -NoBattlEye -CubePort=${CUBEPORT} -cubeworld=world -nosteamclient -NoHangDetection -game -server -log
else
    exec "$@"
fi



