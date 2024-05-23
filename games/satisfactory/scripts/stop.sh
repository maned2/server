#!/bin/bash
echo "[SCRIPTS] Server stopping..."
systemctl stop satisfactory.service
sleep 10
echo "[SCRIPTS] Server stopped"