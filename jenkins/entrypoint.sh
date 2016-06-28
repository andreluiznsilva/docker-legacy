#!/bin/bash
set -e

if [ "$JENKINS_PLUGINS" ]; then
	install-plugins.sh $JENKINS_PLUGINS
fi

exec "$@"
