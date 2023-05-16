#wget https://mercury.picoctf.net/static/1d8a5a2779c4dc24999f0358d7a1a786/enc

python3 -c """
data = open('enc', 'r').read()
flag = ''
for c in data:
    flag += hex(ord(c))[2:]

print(bytes.fromhex(flag).decode())
"""
