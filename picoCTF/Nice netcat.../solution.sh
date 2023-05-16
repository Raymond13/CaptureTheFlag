(sleep 3; echo -n) | nc mercury.picoctf.net 49039 | python -c """
import sys
data = sys.stdin.read().strip()
data = map(int, data.split())
data = map(chr, data)
print(''.join(x for x in data), end='')
"""
