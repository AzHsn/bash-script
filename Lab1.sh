# solve Lab1 bash script
#1
cat /etc/passwd |grep -i lp
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
