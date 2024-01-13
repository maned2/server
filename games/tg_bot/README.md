docker build .

docker-compose up -d

https://github.com/python-telegram-bot/python-telegram-bot/tree/v13.x/examples

sudo cp games/tg_bot/tg_bot.service /etc/systemd/system/tg_bot.service

sudo systemctl daemon-reload

sudo service tg_bot status
sudo service tg_bot start
sudo service tg_bot status

sudo systemctl enable tg_bot

journalctl -xeu tg_bot.service