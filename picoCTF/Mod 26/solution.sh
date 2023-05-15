data="cvpbPGS{arkg_gvzr_V'yy_gel_2_ebhaqf_bs_ebg13_uJdSftmh}"
decoded_data=$(echo "$data" | python3 -c "import sys; from codecs import decode; print(decode(sys.stdin.read().strip(), 'rot_13'))")

echo "$decoded_data" >> flag
