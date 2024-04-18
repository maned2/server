#!/bin/bash
echo "[SCRIPTS] Ports opening..."
sudo ufw allow 28015 # main port
sudo ufw allow 28017 # query port
sudo ufw allow 28083 # rust+ port
