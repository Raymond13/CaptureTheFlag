wget https://mercury.picoctf.net/static/5a4198cd84f87c8a597cbd903d92fbf4/keygenme-trial.py
# inpect the file
# enter_license(), check_key()
python -c """
import hashlib
key_part_static1_trial = 'picoCTF{1n_7h3_|<3y_of_'
key_part_dynamic1_trial = ''.join([hashlib.sha256(b'ANDERSON').hexdigest()[i] for i in [4,5,3,6,2,7,1,8]])
key_part_static2_trial = '}'
key_full_template_trial = key_part_static1_trial + key_part_dynamic1_trial + key_part_static2_trial
print(key_full_template_trial)
"""
