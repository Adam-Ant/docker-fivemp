#!/bin/sh
# This entire script is needed as Docker volumes override folders of the same name inside the image, so this copies the files in AFTER the volume has been configured.

if [ ! -e /fivemp/Server.Launcher.so ]; then
  cp -nr /fivemp-base/* /fivemp/
  chmod +x /fivemp/Server.Launcher.so
  echo "Installed FiveMP! Please stop the server and check config if required."
fi

cp -nrv /fivemp-base/* /fivemp/

cd /fivemp

exec "$@"
