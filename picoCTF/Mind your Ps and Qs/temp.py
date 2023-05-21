
with open('values', 'r') as fh:
    data = fh.read()
c, n, e = map(lambda x: int(x.split()[1]), data.split('\n')[1:])

print(f'c -> {c}')
print(f'n -> {n}')
print(f'e -> {e}')

# https://www.alpertron.com.ar/ECM.HTM
p = int("1461 849912 200000 206276 283741 896701 133693".replace(' ', ''))
q = int("431899 300006 243611 356963 607089 521499 045809".replace(' ', ''))
print(f'p -> {p}')
print(f'q -> {q}')

phi = (p - 1) * (q - 1)
d = pow(e, -1, phi)

print(f'phi -> {phi}')
print(f'd -> {d}')

m = pow(c, d, n)
print(f'm -> {m}')

# big endian
mm = m
import struct
result = []
while mm > 0:
    result.insert(0, struct.pack('>Q', mm & 0xFFFFFFFFFFFFFFFF))
    mm = mm >> 64
result[0] = result[0].lstrip(b'\x00')
bresult = b''.join(result)
print(bresult.decode())

