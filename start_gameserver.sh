#/bin/bash
node="node"
which apt-get > /dev/null
if [ "$?" -eq "0" ]; then
	node=$(which nodejs)
	if [ "$?" -ne "0" ]; then
		echo "Could not find nodejs! Please run \"apt-get install nodejs\" & \"apt-get install npm\" to install it."
		exit 1
	fi
	echo "[BATCH] Debian detected. Using nodejs instead of node..."
fi
echo [BATCH] Starting GameServer
while true
do
	clear
	$node src/server/index.js
	echo -------------------------------------------------------
	echo [BATCH] GameServer Shutdown, waiting 15 seconds before a restart.
	sleep 15
done