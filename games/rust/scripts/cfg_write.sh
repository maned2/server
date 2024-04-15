

sudo -i -u rust bash << EOF
mkdir -p server/server/4fun42/cfg/

echo "ownerid 76561198341247837 \"unnamed\" \"no reason\"
ownerid 76561198171986467 \"unnamed\" \"no reason\"" > server/server/4fun43/cfg/users.cfg

echo "decay.upkeep_period_minutes \"2880\"
halloween.enabled true
halloween.murdererpopulation 5
halloween.scarecrowpopulation 5" > server/server/4fun43/cfg/server.cfg

EOF

