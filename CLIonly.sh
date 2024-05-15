#!/bin/bash
DIALOG=$(dialog --erase-on-exit --stdout --menu "Select Application..." 0 0 0 1 "ls" 2 "ls -l" 3 "ls -a" 4 "ls -al")
if [ $DIALOG == 1 ]
then ls
elif [ $DIALOG == 2 ]
then ls -l
elif [ $DIALOG == 3 ]
then ls -a
elif [ $DIALOG == 4 ]
then ls -al
else
echo "Not Available."
fi
