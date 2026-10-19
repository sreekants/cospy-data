#!/bin/bash
# Runs coslaunch on one location, e.g. ./sim.sh trondheim
# Optional traffic=<model> and weather=<type> override TRAFFIC and WEATHER in the
# location's cos.ini, e.g. ./sim.sh trondheim traffic=ldta weather=clearsky

usage() {
	echo "Usage: $0 <location> [traffic=<model>] [weather=<type>], e.g. $0 trondheim traffic=ldta weather=clearsky" >&2
	exit 1
}

if [ $# -lt 1 ] || [ $# -gt 3 ]; then
	usage
fi

cd "$(dirname "$0")" || exit 1

LOCATION="${1%/}"
shift

OVERRIDES=()
for ARG in "$@"; do
	case "$ARG" in
		traffic=?*)	OVERRIDES+=( "TRAFFIC=${ARG#*=}" ) ;;
		weather=?*)	OVERRIDES+=( "WEATHER=${ARG#*=}" ) ;;
		*)		echo "Error: unknown argument '$ARG'" >&2; usage ;;
	esac
done

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

if [ ${#OVERRIDES[@]} -eq 0 ]; then
	exec python ../cospy/apps/coslaunch/coslaunch.py --config "$CONFIG"
fi

ENVIRONMENT=$(IFS=':'; echo "${OVERRIDES[*]}")
printf '\033[1;33m*** WARNING: overriding %s from command line: %s ***\033[0m\n' "$CONFIG" "$ENVIRONMENT" >&2
exec python ../cospy/apps/coslaunch/coslaunch.py --config "$CONFIG" -environment "$ENVIRONMENT"
