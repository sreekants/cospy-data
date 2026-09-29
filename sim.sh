#!/bin/bash
# Runs coslaunch on one location, e.g. ./sim.sh trondheim

if [ $# -ne 1 ]; then
	echo "Usage: $0 <location>, e.g. $0 trondheim" >&2
	exit 1
fi

cd "$(dirname "$0")" || exit 1

LOCATION="${1%/}"
MATCHES=( config/simulation/*/"$LOCATION"/cos.ini )

if [ ! -f "${MATCHES[0]}" ]; then
	echo "Error: location '$LOCATION' does not exist under config/simulation/<country>/" >&2
	exit 1
fi

if [ ${#MATCHES[@]} -gt 1 ]; then
	echo "Error: location '$LOCATION' exists in more than one country:" >&2
	printf '  %s\n' "${MATCHES[@]}" >&2
	exit 1
fi

CONFIG="${MATCHES[0]}"
echo "Running $CONFIG"
exec python ../cospy/apps/coslaunch/coslaunch.py --config "$CONFIG"
