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
c "cal" \
n "ncal" \
d "date" \
f "df -h" \
F "free" \
Fh "free -h" \
a "aptitude" \
0 "w3m" \
s "ssh" \
t "toot" \
i "irssi" \
o "Other command...")
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
elif [[ $DIALOG == c ]]
then cal $(date +%Y)
elif [[ $DIALOG == n ]]
then ncal $(date +%Y)
elif [[ $DIALOG == d ]]
then date
elif [[ $DIALOG == f ]]
then df -h
elif [[ $DIALOG == F ]]
then free
elif [[ $DIALOG == Fh ]]
then free -h
elif [[ $DIALOG == a ]]
then aptitude
elif [[ $DIALOG == 0 ]]
then { dialog --no-ok --pause "Enter URL in the following text box:" 0 0 3
touch text
WWWM=$(dialog --erase-on-exit --stdout --editbox text 7 0)
w3m "$WWWM"
}
elif [[ $DIALOG == s ]]
then { dialog --no-ok --pause "Enter the device to connect to in the following text box:" 0 0 3
touch text
SSH=$(dialog --erase-on-exit --stdout --editbox text 7 0)
ssh "$SSH"
}
elif [[ $DIALOG == t ]]
then toot tui
elif [[ $DIALOG == i ]]
then irssi
elif [[ $DIALOG == o ]]
then { touch text
CMD=$(dialog --erase-on-exit --stdout --editbox text 7 0)
bash -c "$CMD"
}
else
echo "Not Available."
fi
