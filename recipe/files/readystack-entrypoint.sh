#!/bin/sh
# ReadyStack memcached entrypoint. As upstream's image: a first argument that is an option is memcached's
# (`docker run IMAGE -m 1024` runs `memcached -m 1024`); any other command runs as given.
set -e
case "${1:-}" in
  -*) set -- memcached "$@" ;;
esac
exec "$@"
