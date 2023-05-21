# Method 1
#curl --head http://mercury.picoctf.net:28916/

# Method 2
python -c """
import requests
r = requests.head('http://mercury.picoctf.net:28916/')
print(dict(r.headers)['flag'])
"""
