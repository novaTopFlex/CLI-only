#!/bin/bash
DIALOG=$(whiptail --menu "Select Command..." 0 0 0 \
L "List Contents" \
L1 "List Contents and Permissions" \
L2 "List Contents including Hidden" \
L3 "List Contents and Permissions including Hidden" \
D1 "Display IP address(es) (networking)" \
D2 "Display network statistics" \
P "Perform Wireshark Operations in the Terminal (Cybersecurity in the CLI)" \
Q "List All Processes (BSD-style)" \
Q1 "List All Processes (legacy Linux-style)" \
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
if [[ $DIALOG == L ]]
then ls
elif [[ $DIALOG == L1 ]]
then ls -l
elif [[ $DIALOG == L2 ]]
then ls -a
elif [[ $DIALOG == L3 ]]
then ls -al
elif [[ $DIALOG == D1 ]]
then ip a
elif [[ $DIALOG == D2 ]]
then ss
elif [[ $DIALOG == P ]]
then sudo tshark
elif [[ $DIALOG == Q ]]
then ps aux
elif [[ $DIALOG == Q1 ]]
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
