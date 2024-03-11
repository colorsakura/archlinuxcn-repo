#!/bin/sh

export LD_LIBRARY_PATH='/usr/lib/xmind/xmind';
XMIND_USER_FLAGS_FILE="${XDG_CONFIG_HOME:-$HOME/.config}/Xmind/user-flags.conf"

# Allow users to override command-line options
if [[ -f "${XMIND_USER_FLAGS_FILE}" ]]; then
   XMIND_USER_FLAGS=$(grep -v '^#' "$XMIND_USER_FLAGS_FILE")
fi

# Launch
exec /usr/lib/xmind/xmind $XMIND_USER_FLAGS "$@"
