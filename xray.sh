#!/bin/sh
if [ ! -f UUID ]; then
  UUID="836da102-4158-41e2-8199-f6e8fc89195a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

