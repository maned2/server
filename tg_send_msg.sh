#! /bin/bash
# this script send message to my channel
today=`date '+%Y.%m.%d-%H:%M:%S'`;

curl -g \
  --data-urlencode "chat_id=$TG_CHAT_ID" \
  --data-urlencode "text=*${today}* $1\`\`\`
$2
$3
$4
$5\`\`\`" \
  --data-urlencode "parse_mode=markdown" \
  "https://api.telegram.org/bot$TG_API_KEY/sendMessage"