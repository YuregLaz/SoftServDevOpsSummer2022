  GNU nano 6.2                                   /home/yureg/2.sh
#!/bin/bash
regex="^([a-zA-Z0-9]{1}[a-zA-Z0-9\.]{1,}[a-zA-Z0-9]{1}+)@([a-zA-Z0-9\.]+)\.([a-zA-Z]{2,5})$"
file="/home/yureg/Lazorenko/Lazorenko.txt"
email=$(cat "$file")
echo $email
if [[ $email =~ $regex ]] ; then
    echo "OK"
else
    echo "not OK"
fi