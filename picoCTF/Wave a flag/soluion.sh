#wget https://mercury.picoctf.net/static/fc1d77192c544314efece5dd309092e3/warm

chmod +x warm
./warm -h | grep -oP "(?<=: ).+"
