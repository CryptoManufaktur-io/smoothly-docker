#!/usr/bin/env bash
set -euo pipefail

_public_ip="-ip $(wget -qO- https://ifconfig.me/ip)"

# Word splitting is desired for the command line parameters
# shellcheck disable=SC2086
exec "$@" ${__public_ip}
