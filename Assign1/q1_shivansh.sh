lcm=1;while read num;do rev=0;while((num>0));do rev=$((rev*10+num%10));num=$((num/10));done;a=$lcm;b=$rev;while((b>0));do temp=$b;b=$((a%b));a=$temp;done;gcd=a;lcm=$((lcm/gcd*rev));done<lcm_sample.txt;echo $lcm