echo '''
flag1=$(cat ~/drop-in/1of3.flag.txt)
flag2=$(cat /2of3.flag.txt)
flag3=$(cat ~/3of3.flag.txt)
echo "$flag1$flag2$flag3"
exit
''' > temp.sh

# copy the ssh command from the question to here before ['base -s' < temp.sh]
ssh ctf-player@venus.picoctf.net -p 57279 'bash -s' < temp.sh

rm temp.sh
