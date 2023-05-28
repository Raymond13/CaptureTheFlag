python3 -c "print('\x00'*(50000-32)+'\n'+'\x00'*32+'\n')" | nc mercury.picoctf.net 11188 > temp

python3 -c """
with open('temp', 'r') as fh:
    data = fh.read().split('\n')

encrypted_flag, key = data[2], data[-3]

flag = 'picoCTF{'
for k, ef in zip([key[i:i+2] for i in range(0, len(key), 2)], [encrypted_flag[i:i+2] for i in range(0, len(encrypted_flag), 2)]):
    #print(k, ef)
    for i in range(1000):
        temp = '{:02x}'.format(int(k, 16) ^ i)
        if temp == ef:
            #print(chr(i), end='')
            flag += chr(i)

else:
    flag += '}'

print(flag)
"""

rm temp