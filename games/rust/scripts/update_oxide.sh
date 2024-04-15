#!/bin/bash

sudo -i -u rust bash << EOF
cd server
echo "[SCRIPTS] Server updating oxide..."
curl -L -o Oxide.Rust-linux.zip https://umod.org/games/rust/download/develop
unzip -o -d /home/rust/server/ Oxide.Rust-linux.zip
rm Oxide.Rust-linux.zip
EOF