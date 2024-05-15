#!/bin/bash
DIALOG=$(dialog --erase-on-exit --stdout --menu "Select Application..." 0 0 0 1 "ls" 2 "ls -l" 3 "ls -a" 4 "ls -al")
