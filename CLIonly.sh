#!/bin/bash
DIALOG=$(dialog --erase-on-exit --stdout --menu "Select Application/Command..." 0 0 0 \
1 "ls" \
2 "ls -l" \
3 "ls -a" \
4 "ls -al" \
5 "ip a" \
6 "ss" \
7 "sudo tshark" \
8 "ps aux" \
9 "ps -ely" \
10 "cal" \
11 "ncal" \
12 "date" \
13 "aptitude" \
14 "w3m")
if [[ $DIALOG == 1 ]]
then ls
elif [[ $DIALOG == 2 ]]
then ls -l
elif [[ $DIALOG == 3 ]]
then ls -a
elif [[ $DIALOG == 4 ]]
then ls -al
elif [[ $DIALOG == 5 ]]
then ip a
elif [[ $DIALOG == 6 ]]
then ss
elif [[ $DIALOG == 7 ]]
then sudo tshark
elif [[ $DIALOG == 8 ]]
then ps aux
elif [[ $DIALOG == 9 ]]
then ps -ely
elif [[ $DIALOG == 10 ]]
then cal $(date +%Y)
elif [[ $DIALOG == 11 ]]
then ncal $(date +%Y)
elif [[ $DIALOG == 12 ]]
then date
elif [[ $DIALOG == 13 ]]
then aptitude
elif [[ $DIALOG == 14 ]]
then { touch text
WWWM=$(dialog --editbox text 0 0)
w3m "$WWW"
}
else
echo "Not Available."
fi
