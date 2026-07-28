#!/bin/bash

java --version

cd /usr/src/app

exec java -Xmx2096M -Xms2096M -jar server.jar nogui