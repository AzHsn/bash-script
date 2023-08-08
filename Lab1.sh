# solve Lab1 bash script
#1
cat /etc/passwd |grep -i lpg
#2 display the /etc/passwd except the third line.
#sed '3d' /etc/passwd =delete the third line
awk -F: '{ if (NR!=3) print bash }' /etc/passwd
#3 delete the last line.
sed '$d' /etc/passwd
#4 display /etc/passwd except the line that contain the word "lp"
sed '/lp/d' /etc/passwd
#5 substitute all the words that contain 'lp' with 'mylp' in /etc/passwd 
#note g is an option mean substitute globaly .
sed 's/lp/mylp/g' /etc/passwd
# awk assignments solve
#1 print full name of all user in the system.
awk -F: '{print $1}' /etc/passwd
#2 Print login, full name (comment) and home directory of all users.( Print each line preceded by a line number).
awk -F: '{print NR,"",$1,$6}' /etc/passwd
#3 Print login, uid and full name (comment) of those uid is greater than 500.
awk -F: '{if ($3>=500) print $1,$3}' /etc/passwd
#4 Print login, uid and full name (comment) of those uid is exactly 500.
awk -F: '{if ($3==500) print $3,$1}' /etc/passed
#5 Print line from 5 to 15 from /etc/passwd.
awk -F: '{if (NR>=5 && NR<=15) print $0}' /etc/passwd
#6 Change lp to mylp.
awk -F: '{s/lp/mylp/ print}
#7 Print all information about greatest uid.
awk -F: 'BEGIN{max=-1} {if(max<$3) max=$3} END{print max}' /etc/passwd
#8 Get the sum of all accounts id's.
awk -F: 'BEGIN{sum=0} {sum+=$3} END{print sum}' /etc/passwd
### Bonus
#1 Get the sum of accounts id’s that has the same group.
awk -F: 'BEGIN{sum=0,group=1000} {if ($4==group) sum+=$3} END{print sum}' /etc/passwd


