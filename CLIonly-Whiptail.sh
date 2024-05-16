#!/bin/bash
DIALOG=$(whiptail --menu "Select Application/Command..." 0 0 0 \
1 "List Contents" \
2 "List Contents and Permissions" \
3 "List Contents including Hidden" \
4 "List Contents and Permissions including Hidden" \
5 "Display IP address(es) (networking)" \
6 "Display network statistics" \
7 "Perform Wireshark Operations in the Terminal (Cybersecurity in the CLI)" \
8 "List All Processes (BSD-style)" \
9 "List All Processes (legacy Linux-style)" \
c "Display Calendar for Current Year" \
n "Display Calendar for Current Year with Vertical Weeks" \
d "Display Current Date and Time" \
f "Disk Usage (Human-Friendly)" \
F "Memory Usage" \
Fh "Memory Usage (Human-Friendly)" \
a "Package Manager" \
0 "Web Browser (JavaScript Not Supported)" \
s "Secure Shell (Remote into another system)" \
t "Mastodon" \
i "Internet Relay Chat (IRC)" \
o "Other command..." 3>&1 1>&2 2>&3)
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
then { WWWM=$(whiptail --inputbox "Enter URL in the text area below..." 7 0 3>&1 1>&2 2>&3)
w3m "$WWWM"
}
elif [[ $DIALOG == s ]]
then { SSH=$(whiptail --inputbox "Enter host specification in the text area below..." 7 0 3>&1 1>&2 2>&3)
ssh "$SSH"
}
elif [[ $DIALOG == t ]]
then toot tui
elif [[ $DIALOG == i ]]
then irssi
elif [[ $DIALOG == o ]]
then { CMD=$(whiptail --inputbox "Enter command in the text area below..." 7 0 3>&1 1>&2 2>&3)
bash -c "$CMD"
}
else
echo "Not Available."
fi
