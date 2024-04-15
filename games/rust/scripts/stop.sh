#!/bin/bash
echo "[SCRIPTS] Server stopping..."
systemctl stop rust.service
sleep 10
echo "[SCRIPTS] Server stopped"