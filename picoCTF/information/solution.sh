#wget https://mercury.picoctf.net/static/149ab4b27d16922142a1e8381677d76f/cat.jpg

exiftool cat.jpg | grep -oP "^Lic.+: (.+)" | grep -oP "(?<=: ).+" | base64 -d
echo ''

# trials and errors ?
