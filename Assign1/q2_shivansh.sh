while read str;do ((${#str}>=5&&${#str}<=20))&&[[ $str =~ ^[a-zA-Z][a-zA-Z0-9]*[0-9][a-zA-Z0-9]*$ ]]&&flag=0&&while read fruit;do if echo $str|grep -iqF $fruit;then flag=1;fi;done<fruits.txt&&((flag==0))&&echo YES||echo NO;done<usernames.txt;