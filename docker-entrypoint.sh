#!/bin/bash

if [[ -n "$HOST" ]]; then
    sed -i "s/http:\/\/localhost:8080/https:\/\/$HOST/" ${CATALINA_HOME}/conf/pdf-as/pdf-as-web.properties
fi

echo "$@"
exec "$@"
