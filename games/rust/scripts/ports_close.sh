#!/bin/bash
echo "[SCRIPTS] Ports closing..."
ufw deny 28015 # main port
ufw deny 28016 # rcon port
ufw deny 28017 # query port
ufw deny 28083 # rust+ port
