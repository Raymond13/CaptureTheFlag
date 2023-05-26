wget https://mercury.picoctf.net/static/8fc4e878bd6708031d67cb846f03c140/crackme.py

echo -e "1\n1" | python -c """
from crackme import *
decode_secret(bezos_cc_secret)
""" | grep -oP "pico.+"
